% Script to model the interference between 2 point sources
% separated by a distance d and on a line parallel to a screen
% at a distance D.
% variables names as in Fig. 1 in the lab. script
%

filename = 'int2.xlsx';
% CHANGE THESE VALUES ACCORDING TO YOUR EXPERIMENTAL SETUP:
d=0.63;             % separation between the sources (in m)
D=2.55;             % distance from sources to screen (in m)
lambda=0.03;        % wavelength (in m)
k=2*pi/lambda;
%
x=-0.35:0.001:0.36;   % to cover 50 cm at either side of the centre
theta1=atan((d/2-x)/D);
theta2=atan((d/2+x)/D);
l1=D./cos(theta1);
l2=D./cos(theta2);
j=0+i;
Et=exp(-j*k*l1)./l1+exp(-j*k*l2)./l2;
Et=Et.*conj(Et)/(max(Et)^2);

x_int =xlsread(filename,'A1:A1000');
voltage =xlsread(filename,'B1:B1000');
voltage = voltage./max(voltage)


%
y=x*100;            % converting to cm

plot(y,abs(Et));
hold on;
plot(x_int,voltage);


axis([-35 36 0 1.2]);
set(gca,'XTick',[-50:10:50])
title('{\bfInterference pattern}','FontSize',14)
xlabel('{\bfDistance from the centre of screen (in cm)}')
ylabel('{\bfRelative Intensity}')
line([0 0],[0 1.2])
% line([-0.5 0.5],[1 1],'linestyle',':')
% text(-0.48, 1.1,'drawn by {\bf <...insert your name here...> }')

