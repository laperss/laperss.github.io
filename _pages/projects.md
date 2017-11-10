---
title: "Projects"
permalink: /projects/
excerpt: "Projects that I have taken part in."
author_profile: true
redirect_from:
  - /home/
---
Here you can find info about some projects that I have taken part in during my time at KTH.



<!-- {% include nav_list nav="projects" %}-->

<div class="cf">
<div class="grid__wrapper">
  {% for post in site.projects %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>
</div>



<div class="cf">
PROJECTS: 
   {% for item in site.data.navigation.projects-only  %}
	{{ item }}
    {% include archive-single.html type="grid" %}
   {% endfor %}
</div>

<div class="cf">
PROJECTS: 
  {% for post in site.projects %}
  {{ post.url }}
  {{ post.title }}
{% endfor %}


</div>
