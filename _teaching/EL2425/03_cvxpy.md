---
title: "Optimization in Python"
permalink: /teaching/EL2424/implement-mpc/
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
sidebar:
  nav: "el2425"
---

### Model Predictive Control

In MPC you need to at every sampling point solve a constrained Optimal Control Problem (OCP).
It is critical that we are able to solve the optimization problem fast to allow high rate controllers. 

There exists many solvers for different kinds of optimization problems. 
There are also special frameworks and modeling languages for expressing the optimization problems in e.g. Python and C++. Two sush frameworks are CVXPY (for Python) and ACADO (in C++). Both frameworks can be used together with serveral diffrent solvers. 

### Implementation of OCP in Python using CVXPY
CVXPY provides an [example](http://nbviewer.jupyter.org/github/cvxgrp/cvx_short_course/blob/master/intro/control.ipynb) on how to formulate an OCP in Python. 

### Implementation of nonlinear MPC using ACADO

ACADO provides an [example](http://acado.sourceforge.net/doc/html/d4/d26/example_013.html) on how to formulate a nonlinear OCP in C++. 

