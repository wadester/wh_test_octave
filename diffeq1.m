#!/usr/bin/octave -qf
# Module:   diffeq1.m
# Purpose:  Integrating Differential Equations (from docs)
# Notes:  
#   dx
#   -- = f (x, t)
#   dt
# with the initial condition
#   x(t = t0) = x0
#
printf("Integrating diffeq (from docs):  diffeq1.m\n")

# this is needed to prevent "black plots" in qt octave
graphics_toolkit("gnuplot");

# create a function for f()
function xdot = f (x, t)
  r = 0.25;
  k = 1.4;
  a = 1.5;
  b = 0.16;
  c = 0.9;
  d = 0.8;

  xdot(1) = r*x(1)*(1 - x(1)/k) - a*x(1)*x(2)/(1 + b*x(1));
  xdot(2) = c*a*x(1)*x(2)/(1 + b*x(1)) - d*x(2);

endfunction


# Given the initial condition
x0 = [1; 2];

# and the set of output times as a column vector (note that the
# first output time corresponds to the initial condition given above)
t = linspace (0, 50, 200)';

# it is easy to integrate the set of differential equations:
printf("Integrate the function\n")
x = lsode ("f", x0, t);

printf("Plot the result (pause for 10 sec)\n")
plot (t, x)
pause(10)
