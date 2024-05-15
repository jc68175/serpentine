%% make scatter plot for all temperature 
figure
scatter(rperiod_24,ramplitude_24,'r');
hold on
scatter(rperiod_25,ramplitude_25,'g');
hold on
scatter(rperiod_27,ramplitude_27,'y');
hold on
scatter(rperiod_29,ramplitude_29,'b');
hold on
scatter(rperiod_30,ramplitude_30,'k');

xlabel('Relative period','FontSize',15,'FontWeight','b')
ylabel('Relative amplitude','FontSize',15,'FontWeight','b')

%%fit line to data
%c = polyfit(x,y,1);
c = polyfit(allperiod,allamp,1);
disp(['Equation is y = ' num2str(c(1)) '*x + ' num2str(c(2))])
%y_est = polyval(c,x);
y_est = polyval(c,allperiod);
hold on
plot(allperiod,y_est,'r--','LineWidth',2)
%plot(allperiod,y_est,'r','LineWidth',2)
