---
layout: page
title: Journey
permalink: /journey/
nav: true
nav_order: 6
---

A personal and scientific chronology, organized by era. Journey entries will be added as publish-ready stories are developed; talks remain in the canonical [Talks & Events](/events/) collection.

{% assign eras = site.journey | sort: 'date' %}
{% for era in eras %}
- [{{ era.title | escape }}]({{ era.url | relative_url }})
{% endfor %}
