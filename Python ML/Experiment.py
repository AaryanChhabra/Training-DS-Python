# Differential Equations part 1

import numpy as np

g = 9.8
L = 2
mu = 0.1

theta_0 = np.pi/30
theta_dot_0 = 0

def get_theta_double_dot(theta, theta_dot):
    return -mu*theta_dot - (g/L) * np.sin(theta)

# Solution to diff eqn

def theta(t):
    theta = theta_0
    theta_dot = theta_dot_0
    delta_t = 0.01
    for time in np.arange(0,t, delta_t):
        theta_double_dot = get_theta_double_dot(theta, theta_dot)
        theta += theta_dot * delta_t
        theta_dot = theta_double_dot * delta_t
    return(theta)

 
print(theta(5))