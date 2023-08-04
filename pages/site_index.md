---
layout: default
title: Site Index
permalink: /site-index/
---
<ul>
  {% for page in site.pages %}
  <li>{{site.url}}{{page.url}}</li>
  {% endfor %}  <!-- page -->
</ul>

<ul>
  {% for assignment in site.assignments %}
  <li>{{site.url}}{{assignment.url}}</li>
  {% endfor %}  <!-- page -->
</ul>

<ul>
  {% for lecture in site.lectures %}
  <li>{{site.url}}{{lecture.url}}</li>
  {% endfor %}  <!-- page -->
</ul>

<ul>
  {% for resource in site.resources %}
  <li>{{site.url}}{{resource.url}}</li>
  {% endfor %}  <!-- page -->
</ul>
