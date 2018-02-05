filename = 'data.xlsx';

x =xlsread(filename,'B1:B1000');
y =xlsread(filename,'C1:C1000');

max_y = max(y);
y = y./3.2;

plot(x,y);

% line([0 0],[0 1.2],'Color','black')
title('{\bfIntensity vs Distance}','FontSize',14)
xlabel('{\bfDistance from the centre in cm)}')
ylabel('{\bfRelative Intensity}')