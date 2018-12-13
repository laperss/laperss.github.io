---
title: "Model Predictive Control"
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
---

## Why MPC?
* Very good method for constraints handling
* Systems with complex dynamic can benefit from considering this already in the computation of the control inputs
* Intuitive method for control of MIMO systems

## The MPC work flow
In class, we are taught mainly about how to choose suitable terminal sets and weights, how to prove stability, and other more or less theoretical aspects. However, this is only a fraction of the work that acctually goes into the MPC design process:

![Figure: Step response for the differential equation.]( {{ site.url }}{{ site.baseurl }}/assets/images/mpc.png ){:width="600px" .center-image}
