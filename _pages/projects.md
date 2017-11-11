---
title: "Projects"
permalink: /projects/
excerpt: "Projects that I have taken part in."
author_profile: true
redirect_from:
   - /home/
---
Here you can find info about some projects that I have taken part in during my bachelors and masters at KTH.



<!-- {% include nav_list nav="projects" %}-->

<div class="cf">
<div class="grid__wrapper">
  {% for post in site.projects %}
    {% if  post.parent == true %}
      {% include archive-single.html type="grid" %}
    {% endif %}  
  {% endfor %}
</div>
</div>

