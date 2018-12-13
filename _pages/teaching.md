---
title: "Teaching"
permalink: /teaching/
excerpt: "Courses I have taught."
sidebar:
  nav: "teaching"
author_profile: false
redirect_from:
  - /home/
---
Here you can find resources from some of the courses where I have assisted in teaching. 

<div class="cf">
<div class="grid__wrapper">
  {% for post in site.teaching %}
    {% if  post.parent == true %}
      {% include archive-single-sub-smaller.html type="list" %}
    {% endif %}
  {% endfor %}
</div>
</div>