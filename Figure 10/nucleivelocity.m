%input data of x and y coordinates
%n_x= n49x;
%n_y= n49y;

%n_x= n41x;
%n_y= n41y;

% first obtain x-coordinate of time series
%nucleix = sortrows(n_x',1);
%n_nucleix = nucleix(:,2:11);
% convert to um , reallength= physical length of pixel on CCD (6.45um) /
% total magnification used  6.45/50 = 0.129um/pixel
%if 20x used 6.45/20=0.3225um/pixel

%xT = n_nucleix.*(.129); 

%set time interval for graph
%clearvars -except oriyT orixT xT n49x n49y n_y
p = size(xaT,2);
j = size(xaT,1);
%input the right amount of time interval to calculate the time diff
for z = 1:p
tD(:,z) = 3*(z-1);
end
% for z = 1:p
% orixT(:,z) = xT(:,z) - xT(:,1);
% end


% obtain y-coordinate of time series
% nucleiy = sortrows(n_y',1);
% n_nucleiy = nucleiy(:,2:11);

% yT = n_nucleiy.*(0.129); 

% for z = 1:p
% oriyT(:,z) = yT(:,z) - yT(:,1);
% end


%calculate mean of x and y coordinates and fit a straight line 

meanxT= mean(xaT,1);
meanyT= mean(yaT,1);



% fit a slope that would pass through the ORIGIN to obtain all data y=mx
%estimate Parameter vt*tD = y
slope = tD(:)\meanxT(:);
x = tD;
y= slope*x;

figure
title('x-mean')
plot(tD,meanxT,'o','MarkerEdgeColor','b','MarkerFaceColor','b');
hold on
plot(x,y,'r--','LineWidth',2)
ylabel('Displacement (\mum)','FontWeight','bold','FontSize',30);
xlabel('Time (Seconds)','FontWeight','bold','FontSize',30);
hold on


%fit a straight line(does not pass through origin)
%c = polyfit(tD,meanxT,1);
%y_est = polyval(c,tD);

%Plot x coordinates and fit straight line curve

%plot(tD,meanxT,'o');
%hold on
%plot(tD,y_est,'r--','LineWidth',2)
%disp(['Equation is y = ' num2str(c(1)) '*x + ' num2str(c(2))])


% fit a slope that would pass through the origin to obtain for meanY

slope_My = tD(:)\meanyT(:);
x= tD;
y_My= slope_My*x;

%figure 
title('y-mean')
plot(tD,meanyT,'o','MarkerEdgeColor','m','MarkerFaceColor','m');
hold on
plot(x,y_My,'r--','LineWidth',2)


% fit a straight line for meanY
%meanyT= mean(oriyT,1);
%c = polyfit(tD,meanyT,1);
%y_est = polyval(c,tD);

%Plot y coordinates and fit straight line curve
%plot(tD,meanyT,'o');
%hold on
%plot(tD,y_est,'r--','LineWidth',2)
%disp(['Equation is y = ' num2str(c(1)) '*x + ' num2str(c(2))])


%calculate variance of x and y and fit straight line curve
%clearvars -except oriyT orixT tD z p

varx = var(xaT);
slope_varX = tD(:)\varx(:);
x = tD;
y_varX= slope_varX*x;

%figure
%title('x-MSD')
yyaxis right
plot(tD,varx,'o','MarkerEdgeColor','b');
plot(x,y_varX,'r:','LineWidth',2)
ylabel('Mean Square Displacement (\mum^2)','FontWeight','bold',...
    'FontSize',30);
%c = polyfit(tD,varx,1);
%y_est = polyval(c,tD);

%Plot x coordinates variance and fit straight line curve with different
%axis
%yyaxis right
%plot(tD,varx,'o');
%hold on
%plot(tD,varx,'r--','LineWidth',2)
%%disp(['Equation is y = ' num2str(slope) '*x 

%calculate variance of  y and fit straight line curve

varY = var(yaT);


% fit a slope that would pass through the origin to obtain all data
slope_vary = tD(:)\vary(:);
x = tD;
y_vary= slope_vary*x;

%figure
yyaxis right
plot(x,varY,'o','MarkerEdgeColor','m');
plot(x,y_varY,'r:','LineWidth',2)
legend('mean-x','fit','mean-y','fit','MSD-x','fit','MSD-y','fit','FontWeight','bold','FontSize',20)

%savefig('serp57block6.fig')
%c = polyfit(tD,varY,1);
%y_est = polyval(c,tD);

%Plot y coordinates variance and fit straight line curve
%plot(tD,varY,'o');
% hold on
%plot(tD,y_est,'r--','LineWidth',2)
