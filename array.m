lambda=0.03;
d = lambda/4;
phi = pi/2;

theta = 0:0.01:2*pi


rho = 2*sqrt(((sin(d/2*cos(theta)))-sin(d/2*cos(theta) - phi)).^2 +(cos(d/2*cos(theta))+cos(d/2*cos(theta)-phi)).^2);

polar(theta, rho);
polarplot(theta,rho);