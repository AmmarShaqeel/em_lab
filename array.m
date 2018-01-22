lambda=0.03;
d = lambda/4;
phi = pi/2;
k = 2*pi/lambda

theta = 0:0.01:2*pi;


rho = 2*cos(k * d/2 * cos(theta) + phi/2);

polar(theta, rho);
polarplot(theta,rho);