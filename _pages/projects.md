---
title: "Projects"
permalink: /projects/
excerpt: "Projects that I have taken part in."
modified: 2017-11-03T10:01:43-04:00
sidebar:
  nav: "projects"
author_profile: false
redirect_from:
  - /home/
---
Here you can find info about some projects that I have taken part in during my time at KTH.

{% capture written_label %}'None'{% endcapture %}

  {% unless projects.output == false or projects.label == "posts" %}
    {% capture label %}{{ projects.label }}{% endcapture %}
    {% if label != written_label %}
      <h2 id="{{ label | slugify }}" class="archive__subtitle">{{ label }}</h2>
      {% capture written_label %}{{ label }}{% endcapture %}
    {% endif %}
  {% endunless %}
  {% for post in projects.docs %}
    {% unless projects.output == false or projects.label == "posts" %}
      {% include archive-single.html %}
    {% endunless %}
  {% endfor %}
