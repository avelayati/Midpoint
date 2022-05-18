function [yout] = ODE2(F,t0,h,tfinal,y0)
% Euler solver for ODEs
% F: Function, t: point, h: step size, y0:initial value 
% To solve dy/dt = F(t,y) with y(t0) = y0

y = y0;
yout = y;

for t = t0 : h : tfinal-h
    s1 = F(t,y);
    s2 = F(t+h/2,y+h/2)
    y = y + h*s2;
    yout = [yout; y]
end

