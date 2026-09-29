---
layout: page
title: Projects
permalink: /projects/
nav: false
---

A small set of research projects and developing work.

{% assign project_items = site.projects | sort: 'date' | reverse %}
{% for project in project_items %}
<article class="event-card">
  {% if project.status %}<p><span class="event-type-badge">{{ project.status | upcase }}</span></p>{% endif %}
  <h2><a href="{{ project.url | relative_url }}">{{ project.title | escape }}</a></h2>
  {% if project.summary %}<p>{{ project.summary | escape }}</p>{% endif %}
</article>
{% endfor %}
