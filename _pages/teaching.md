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
Here you can find information about some courses I have taught. 

<div class="cf">
<div class="grid__wrapper">
  {% for post in site.teaching %}
    {% if  post.parent == true %}
      {% include archive-single.html type="grid" %}
    {% endif %}  
  {% endfor %}
</div>
</div>
