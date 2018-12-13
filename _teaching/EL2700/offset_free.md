---
title: "Offset-free MPC"
layout: single
author_profile: false
share: false
use_math: true
use_bigfoot: true
comments: true
---

### Background

When a system is subjected to disturbances of some sort, or when there is a mismatch between the MPC model and the actual system, then the nominal system model will be an incorrect representation of the dynamics. An improvement can be achieved by extending the system to include disturbance terms on the state and output

\begin{eqnarray}
  {x}(t+1) &&= Ax(t) + Bu(t) + w(t) \nonumber\\\\  y(t) &&= Cx(t) + v(t), \nonumber
\end{eqnarray}

where $w(t)$ and $v(t)$ are disturbances acting on the system. For the sake of the observer, this can be written as an augmented system with the disturbances incorporated into the model

\begin{eqnarray}
 \xi_{t+1}&&=\begin{bmatrix}A&&B_d\\\\0&&I\end{bmatrix}\xi_t+ \begin{bmatrix}B \\\\ 0 \end{bmatrix}u_{t} = A_a\xi_t + B_a u_t \nonumber \\\\ y_{t} &&= \begin{bmatrix}C&C_d \end{bmatrix} \xi_t = C_a \xi_t, \nonumber
\end{eqnarray}

where $\xi_t = \begin{bmatrix}x_{t}&&d_{t} \end{bmatrix}^T\in\mathbb{R}^{n+n_d}$, $B_d\in\mathbb{R}^{n \times n_d}$, $C_d\in\mathbb{R}^{p \times n_d}$.
The observer is then given by

\begin{eqnarray}
  \hat{\xi}_t = \hat{\xi}^{pred}_t + K_a(y_t - C_a \hat{\xi}^{pred}_t ) \nonumber
\end{eqnarray}

where $\hat{\xi}^{pred}_{t+1}$ is the predicted state

\begin{eqnarray}
\hat{\xi}^{pred}_{t+1} = \begin{bmatrix}A&&B_d\\\\0&&I\end{bmatrix}\hat\xi_t + \begin{bmatrix}B\\\\0\end{bmatrix}u_t \nonumber
\end{eqnarray}

and $K_a =\begin{bmatrix}K_x && K_d\end{bmatrix}^T$ is the augmented observer.


Now, theorem 5.5.2 says that if
\begin{eqnarray}
  \mbox{rank}
  \begin{bmatrix}
    A-I && B_d \\\\ C && C_d
  \end{bmatrix} = n+n_d
                    ,\qquad
                    \mbox{rank}
                    \begin{bmatrix}
                      A-I & B\\ C & 0
                    \end{bmatrix} = n+p \nonumber
\end{eqnarray}
and if the observer gains $K_x$ and $K_d$ are chosen such that the observer is asymptotically stable, then the steady state output will go to the reference value. 

### Implementation in MATLAB

This is an example of an implementation in MATLAB


```matlab
Q = eye(p);
R = eye(m)*0.1;

x = sdpvar(n, N+1); 
r = sdpvar(p, N+1);
u = sdpvar(m, N+1); % starting at u(1) -> time -1

dx = sdpvar(n, 1);
dy = sdpvar(p, 1);

cost = 0;
constraints = [];

% Iteratively add the constraints and objectives
for i = 1:N
    cost = cost + ((C*x(:,i)+dy)-r(:,i))'*Q*((C*x(:,i)+dy)-r(:,i));
    cost = cost + (u(:,i+1)-u(:,i))'*R*(u(:,i+1)-u(:,i));
    
    % Input constraints
    constraints = [constraints, -1 <= u(1, i) <= 1];
    constraints = [constraints, -1 <= u(2, i) <= 1];
    
    % State evolution
    constraints = [constraints, x(:, i+1) == A*x(:, i) + B*u(:, i) + dx];
end

options = sdpsettings('verbose', 0, 'solver', 'quadprog');
controller = optimizer(constraints, cost, options, ...
                       [x(:,1); u(:,1); dx; dy; r(1,:)'; r(2,:)'], ...
                       [u(1,2)',u(2,2)']);

```

Implementation of the observer and the disturbance estimators: 
```matlab
% Observer
xpred = A*xhat + B*uprev;
xhat = A*xhat + B*uprev + K*(y_of(:,i) - C*(A*xhat + B*uprev));
dx = xhat - xpred;
dy = y(:,i) - C*xhat;

% Get reference
references = reference(t);

% Controller
result = controller{[xhat; u(:,i); dx; dy; references]};

% Next input to apply
u(:,i+1) = result;
```


### References
* Maeder, U., Borrelli, F., & Morari, M. (2009). Linear offset-free Model Predictive Control. Automatica, 45, 2214-2222.

* G. Pannocchia, "Offset-free tracking MPC: A tutorial review and comparison of different formulations," 2015 European Control Conference (ECC), Linz, 2015, pp. 527-532.