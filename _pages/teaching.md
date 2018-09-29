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
Here you can find information about some courses I have taught as a teaching assistant. 

<div class="cf">
<div class="grid__wrapper">
  {% for post in site.teaching %}
    {% if  post.parent == true %}
      {% include archive-single-sub.html type="list" %}
    {% endif %}
  {% endfor %}
</div>
</div>

