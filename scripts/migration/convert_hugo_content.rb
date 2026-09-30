#!/usr/bin/env ruby
# Convert canonical Hugo event/project bundles into Jekyll collection files.
# This script preserves the Hugo source tree and refuses to overwrite targets.

require "date"
require "fileutils"
require "json"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("../..").realpath
REPORT_PATH = ROOT.join("scripts/migration/migration-report.json")
EVENT_TYPES = ["Conference", "Workshop", "Summer School", "Winter School", "Symposium", "Collaboration Meeting", "Training"].freeze
EVENT_TYPE_OVERRIDES = {
  "frontiers-nuclear-hadronic-2024" => "Summer School"
}.freeze


def plain(value)
  case value
  when Date, Time
    value.iso8601
  when Hash
    value.transform_values { |item| plain(item) }
  when Array
    value.map { |item| plain(item) }
  else
    value
  end
end


def parse_bundle(path)
  text = path.read
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n?(.*)\z/m)
  raise "Missing Hugo frontmatter: #{path.relative_path_from(ROOT)}" unless match

  frontmatter = YAML.safe_load(match[1], permitted_classes: [Date, Time], aliases: true) || {}
  [plain(frontmatter), match[2].to_s.strip]
end


def event_type_for(slug, tags)
  return EVENT_TYPE_OVERRIDES[slug] if EVENT_TYPE_OVERRIDES.key?(slug)

  EVENT_TYPES.find { |type| tags.include?(type) } || "Event"
end


def role_for(slug, tags, summary)
  return "Poster presentation" if tags.include?("Poster")
  return "Student talk" if slug == "nnpss-2026-seattle"
  return "Oral presentation" if summary.to_s.match?(/oral/i)
  return "Contributed talks" if summary.to_s.match?(/contributed talks/i)
  return "Research talk" if tags.include?("Talk")
  return "Participation details not recorded" if slug == "eic-summer-school-2026-stonybrook"
  return "Participant" if tags.any? { |tag| ["Summer School", "Winter School"].include?(tag) }

  "Details not recorded"
end


def write_bundle(target, frontmatter, body)
  raise "Refusing to overwrite #{target.relative_path_from(ROOT)}" if target.exist?

  target.dirname.mkpath
  target.write("---\n#{YAML.dump(frontmatter).sub(/\A---\s*\n/, "")}---\n\n#{body}\n")
end


def convert_event(path, report)
  data, source_body = parse_bundle(path)
  slug = path.dirname.basename.to_s
  tags = Array(data["tags"])
  type = event_type_for(slug, tags)
  role = role_for(slug, tags, data["summary"])
  links = Array(data["links"]).map do |link|
    { "name" => link["name"], "url" => link["url"] }.compact
  end
  links.unshift({ "name" => "Event page", "url" => data["event_url"] }) if data["event_url"] && links.none? { |link| link["url"] == data["event_url"] }

  fields = {
    "layout" => "page",
    "title" => data["title"],
    "permalink" => "/events/#{slug}/",
    "date" => data["event_start"] || data["date"],
    "end_date" => data["event_end"],
    "event" => data["event_name"],
    "event_type" => type,
    "role" => role,
    "location" => data["location"],
    "summary" => data["summary"],
    "abstract" => data["abstract"],
    "tags" => tags,
    "links" => links
  }.compact

  body_lines = ["**#{type} · #{role}**", "", data["summary"].to_s]
  body_lines.concat(["", "## Abstract", "", data["abstract"].to_s]) if data["abstract"] && !data["abstract"].to_s.empty?
  body_lines.concat(["", source_body]) unless source_body.empty?
  image = path.dirname.join("featured.jpg")
  if image.file?
    image_target = ROOT.join("assets/img/events", "#{slug}.jpg")
    if image_target.file?
      fields["image"] = "/assets/img/events/#{slug}.jpg"
    else
      report << { "source" => path.relative_path_from(ROOT).to_s, "media" => "featured image not copied; no stripped target asset exists" }
    end
  end

  target = ROOT.join("_events", "#{slug}.md")
  write_bundle(target, fields, body_lines.join("\n").strip)

  report << {
    "source" => path.relative_path_from(ROOT).to_s,
    "target" => target.relative_path_from(ROOT).to_s,
    "route" => fields["permalink"],
    "event_type" => type,
    "role" => role,
    "unmapped_frontmatter" => data.keys - %w[title date lastmod event_name event_url location summary abstract event_start event_end event_all_day authors tags featured links talk_title]
  }
end


def convert_project(path, report)
  data, source_body = parse_bundle(path)
  slug = path.dirname.basename.to_s
  fields = {
    "layout" => "page",
    "title" => data["title"],
    "permalink" => "/projects/#{slug}/",
    "date" => data["date"],
    "summary" => data["summary"],
    "status" => data["status"],
    "tags" => data["tags"]
  }.compact
  target = ROOT.join("_projects", "#{slug}.md")
  write_bundle(target, fields, source_body)
  report << {
    "source" => path.relative_path_from(ROOT).to_s,
    "target" => target.relative_path_from(ROOT).to_s,
    "route" => fields["permalink"],
    "status" => fields["status"],
    "unmapped_frontmatter" => data.keys - %w[title date summary status tags]
  }
end

report = []
Dir.glob(ROOT.join("content/events/*/index.md")).sort.each { |path| convert_event(Pathname.new(path), report) }
Dir.glob(ROOT.join("content/projects/*/index.md")).sort.each do |path|
  next if Pathname.new(path).dirname.basename.to_s == "projects"
  convert_project(Pathname.new(path), report)
end
REPORT_PATH.write(JSON.pretty_generate({ "format" => 1, "sources_preserved" => true, "items" => report }) + "\n")
puts "Converted #{report.length} records; source Hugo files preserved."
puts "Migration report: #{REPORT_PATH.relative_path_from(ROOT)}"
