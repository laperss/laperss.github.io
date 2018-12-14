---
title: "Get started"
permalink: /teaching/EL2424/get-started/
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
sidebar:
  nav: "el2425"
---
This first week, you need to make sure you learn the basics. This includes Git (for code management) and ROS (a framework for robot software).

1. 
For ROS/Linux, use Ubuntu 16.04 LTS with ROS kinetic. [These tutorials](http://wiki.ros.org/ROS/Tutorials) are a good way of becoming familiar with ROS. 
In particular, focus on 1.1-1.17.  Make sure that you understand the following concepts after you finish the tutorial:<br><br>
    **[node](http://wiki.ros.org/rosnode)** -- a script which is communicating with ROS

    **[topic](http://wiki.ros.org/rostopic)** -- the name of a channel that messages are published to

    **[msg](http://wiki.ros.org/rosmsg)** -- a unit of information that is published on a topic

    **[srv](http://wiki.ros.org/rosservice)** -- a service for sending specific commands

    **[param](http://wiki.ros.org/rosparam)** -- parameters that you can set and load to use in your scripts
<br><br>
You should also be able to write _subscribers_ and _publishers_ (as a part of a node) as well as _Launch files_ (for launching multiple nodes).
<br>
I suggest that you as a group start thinking about this project in the terms above - what nodes do you imagine that you have to create, what services should be implemented, and for what can you use parameters? Some things will be fixed but the overall architecture is up to you.

2. For Git, a good reference can be found [here](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
in particular, the first three chapters are interesting for what you will do in this course. Basically, after the tutorial you should be able to
* Pull (fetch+merge) a remote repository. Basically downloading the latest changes that your coworkers have done.
* Edit the code
* Push changes to the repository - that is update the remote so that your coworkers can access the code as well. And possibly also create and merge branches. 
