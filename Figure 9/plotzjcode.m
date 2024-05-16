

figure (2)
subplot1 = subplot(3,2,1);
%% 3 hour light on 3 hour light off 
for i=0:6:size(G1,1);
i=patch([i i+3 i+3 i], [8 8 -6 -6],'y');
set(i,'FaceColor',[1 1 0.800000011920929]);
set(i,'EdgeColor','none');
end

for  j=3:6:size(G1,1);
j= patch([j j+3 j+3 j],[8 8 -6 -6], 'k');
set(j,'FaceColor',[0.831372559070587 0.815686285495758 0.7843137383461]);
set(j,'EdgeColor','none');
end

% Create xlabel
xlabel('Time (Hours)');

% Create ylabel
ylabel('Fluoresescence Intensity (A.U.)');

% Set the remaining axes properties
set(axes1,'FontName','Arial','FontSize',24,'FontWeight','bold','XMinorTick',...
    'on','XTick',[0 50 100 150 200 250],'XTickLabel',...
    {'0','50','100','150','200','250'});

% Create xlabel
xlabel('Time (Hours)','FontWeight','bold','FontName','Arial');

% Create ylabel
ylabel('Fluoresescence Intensity (A.U.)','FontWeight','bold',...
    'FontName','Arial');
set(subplot1,'FontName','Arial','FontSize',14,'FontWeight','bold');

plot(1./f,mean_period,1./f,b1,1./f,b2);
plot(1./f,mean_period,1./f,b1,1./f,b2);
ylabel('Normalized power (A.U.)','FontWeight','bold','FontName','Arial')
xlabel('Time (Hours)','FontWeight','bold','FontName','Arial');
legend('Mean','data25','data975')
%% for 6 hour light 6 hour light off data
for i=0:12:size(c6,1);
i=patch([i i+6 i+6 i], [30 30 -10 -10],'y');
set(i,'FaceColor',[1 1 0.800000011920929]);
set(i,'EdgeColor','none');
end

for  j=6:12:size(c6,1);
j= patch([j j+6 j+6 j],[30 30 -10 -10], 'k');
set(j,'FaceColor',[0.831372559070587 0.815686285495758 0.7843137383461]);
set(j,'EdgeColor','none');
end

% Create xlabel
xlabel('Time (Hours)','FontWeight','bold','FontName','Arial');

% Create ylabel
ylabel('Fluoresescence Intensity (A.U.)','FontWeight','bold',...
    'FontName','Arial');
set(subplot1,'FontName','Arial','FontSize',12,'FontWeight','bold');
%% for 18 hr light on light off data
for i=0:36:size(c8,1);
i=patch([i i+18 i+18 i], [15 15 -10 -10],'y');
set(i,'FaceColor',[1 1 0.800000011920929]);
set(i,'EdgeColor','none');

end

for  j=18:36:size(c8,1);
j= patch([j j+18 j+18 j],[15 15 -10 -10], 'k');
set(j,'FaceColor',[0.831372559070587 0.815686285495758 0.7843137383461]);
set(j,'EdgeColor','none');
end

plot(1./f,mean_period,1./f,b1,1./f,b2);
ylabel('Normalized power (A.U.)','FontWeight','bold','FontName','Arial')
xlabel('Time (Hours)','FontWeight','bold','FontName','Arial');
legend('Mean','2.5 percentile','97.5 percentile');

 for i=0:36:size(c8,1);
i=patch([i i+18 i+18 i], [15 15 -10 -10],'y');
set(i,'FaceColor',[1 1 0.800000011920929]);
set(i,'EdgeColor','none');

end

for  j=18:36:size(c8,1);
j= patch([j j+18 j+18 j],[15 15 -10 -10], 'k');
set(j,'FaceColor',[0.831372559070587 0.815686285495758 0.7843137383461]);
set(j,'EdgeColor','none');
end