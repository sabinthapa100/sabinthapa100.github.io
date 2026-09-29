---
layout: page
title: Talks & Events
permalink: /events/
nav: true
nav_order: 4
---

A record of research talks, conferences, workshops, schools, and symposia.

{% assign event_items = site.events | sort: 'date' | reverse %}
{% for event in event_items %}
<article class="event-card">
  {% if event.image %}<img class="event-card-image" src="{{ event.image | relative_url }}" alt="{{ event.event | default: event.title | escape }}" loading="lazy">{% endif %}
  <p><span class="event-type-badge">{{ event.event_type | upcase }}</span><strong>{{ event.role | escape }}</strong></p>
  <h2><a href="{{ event.url | relative_url }}">{{ event.title | escape }}</a></h2>
  {% if event.event %}<p><strong>{{ event.event | escape }}</strong></p>{% endif %}
  {% if event.location %}<p>{{ event.location | escape }}</p>{% endif %}
  {% if event.summary %}<p>{{ event.summary | escape }}</p>{% endif %}
</article>
{% endfor %}
