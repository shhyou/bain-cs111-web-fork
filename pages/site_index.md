---
layout: default
title: Site Index
permalink: /site-index/
---
<ul>
  {% for page in site.pages %}
  <li><a href="{{site.url}}{{page.url}}">{{site.url}}{{page.url}}</a></li>
  {% endfor %}  <!-- page -->
</ul>

<ul>
  {% for assignment in site.assignments %}
    {% if assignment.draft == 0 %}
  <li><a href="{{site.url}}{{assignment.url}}">{{site.url}}{{assignment.url}}</a></li>
    {% endif %}
  {% endfor %}  <!-- page -->
</ul>

<ul>
  {% for lecture in site.lectures %}
  {% if lecture.draft == 0 %}
  <li><a href="{{site.url}}{{lecture.url}}">{{site.url}}{{lecture.url}}</a></li>
  {% endif %}
  {% endfor %}  <!-- page -->
</ul>

<ul>
  {% for resource in site.resources %}
  <li><a href="{{site.url}}{{resource.url}}">{{site.url}}{{resource.url}}</a></li>
  {% endfor %}  <!-- page -->
</ul>
