---
layout: page
title: Dev Diary
permalink: /diary/
---

Progress posts, newest first. Also available as an [RSS feed]({{ "/feed.xml" | relative_url }}).

{% for post in site.posts %}
- **[{{ post.title }}]({{ post.url | relative_url }})**: {{ post.date | date: "%b %-d, %Y" }}
  {% if post.excerpt %}<br>{{ post.excerpt | strip_html | truncatewords: 30 }}{% endif %}
{% endfor %}
