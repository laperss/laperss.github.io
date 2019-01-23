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
Here I have collected material from some of the courses that I have assisted in teaching. 

<div class="cf">
<div class="grid__wrapper">
  {% for post in site.teaching %}
    {% if  post.parent == true %}
      {% include archive-single-sub-smaller.html type="list" %}
       <hr>
    {% endif %}
  {% endfor %}
</div>
</div>
