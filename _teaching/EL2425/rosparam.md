---
title: "Params in ROS"
permalink: /teaching/EL2424/rosparam/
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
sidebar:
  nav: "el2425"
---

### How to use parameters in ROS*
You can use [rosparam](http://wiki.ros.org/rosparam) as a way of keeping track of the various parameters you need in your project. Examples of parameters might be the time constants of your car, the tuned parameters of your controllers, etc. 
This is a nice feature since you can keep all the parameters in one place, and you can easily update the values. 
(Not a requirement but might make life easier later on!)


* The YAML file: A storage for "standard" parameters that  you want to load in your scripts. A convenient place to store parameters that are loaded in scripts upon execution. 
Create a file `~/catkin_ws/src/pioneers/resources/controller.yaml`: 
 
```yml
K: 3.0
Kd: 0.1
h: 0.01 
```

* The launch file: Now, you need to load the YAML file when you launch the script, for example: 

 ```xml
  <group ns="controller">
    <node name="PID" pkg="pioneers" type="PID.py" output="screen"/>
    <rosparam command="load" file="$(find pioneers)/resources/controller.yaml" />
  </group> 
```

* The script: To access a parameter in a (Python) script, simply write: 

```python
K = rospy.get_param("K")
Kd = rospy.get_param("Kd")
h = rospy.get_param("h") 
```
