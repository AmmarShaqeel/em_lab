lambda=3;
d = [lambda/2,lambda/2, lambda/2, lambda/4, lambda/4, lambda/4];
phi = [0, pi/2, pi, 0, pi/2, pi];
k = 2*pi/lambda

theta = 0:0.01:2*pi;

for i = 1:length(d);

    rho = 2*cos(k*(d(i)/2)* cos(theta) +phi(i)/2);

    figure(i);
    polar(theta, rho);
    polarplot(theta,rho);
    title(['d =' d(i)*lambda 'phi =' phi(i)]);
    
end