%load('D:\\research\\experiments\\filament\\serpentine 2nd 32mm device\\u_turn_data.mat')
%% serpentine channel
% make sure to add the whole folder with dtrndanl2.m to the filepath
t = linspace(10,103,187);
g1=u1;
res1=dtrndanl2(g1);

g2=u2;
res2=dtrndanl2(g2);

g3=u3;
res3=dtrndanl2(g3);

g4=u4;
res4=dtrndanl2(g4);
%% plots
%plot raw data from each u-turn method 
figure(1)
sgtitle('1 U-turn') 
subplot(2,2,1)
plot(t,g1)
xlabel('Time(hour')
ylabel('Fluorescence intensity')
xlim([25,105])

subplot(2,2,2)
plot(t,res1)
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])
% mean
subplot(2,2,3)
plot(t,mean(g1'))
xlabel("Time(hour)")
ylabel("Fluorescence intensity ")
xlim([25,105])

subplot(2,2,4)
plot(t,mean(res1))
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])

figure(2)
sgtitle('2 U-turn') 
subplot(2,2,1)
plot(t,g2)
xlabel('Time(hour')
ylabel('Fluorescence intensity')
xlim([25,105])

subplot(2,2,2)
plot(t,res2)
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])
% mean
subplot(2,2,3)
plot(t,mean(g2'))
xlabel("Time(hour)")
ylabel("Fluorescence intensity ")
xlim([25,105])

subplot(2,2,4)
plot(t,mean(res2))
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])

figure(3)
sgtitle('3 U-turn') 
subplot(2,2,1)
plot(t,g3)
xlabel('Time(hour')
ylabel('Fluorescence intensity')
xlim([25,105])

subplot(2,2,2)
plot(t,res3)
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])
% mean
subplot(2,2,3)
plot(t,mean(g3'))
xlabel("Time(hour)")
ylabel("Fluorescence intensity ")
xlim([25,105])

subplot(2,2,4)
plot(t,mean(res3))
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])

figure(4)
sgtitle('4 U-turn') 
subplot(2,2,1)
plot(t,g4)
xlabel('Time(hour')
ylabel('Fluorescence intensity')
xlim([25,105])

subplot(2,2,2)
plot(t,res4)
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])
% mean
subplot(2,2,3)
plot(t,mean(g4'))
xlabel("Time(hour)")
ylabel("Fluorescence intensity ")
xlim([25,105])

subplot(2,2,4)
plot(t,mean(res4))
xlabel("Time(hour)")
ylabel("Detrended fluorescent intensity ")
xlim([25,105])
%% periodogram
%plot periodogram for each u-turn method with individual plots on the left
%and average periodogram on the right
figure (5)
sgtitle('1 U-turn periodogram') 
for i=1:size(res1,1)
relNums=res1(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res1(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
figure (5)
subplot(1,2,1)
plot(1./f,L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')




mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res1(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
subplot(1,2,2)
plot(1./f,mean_L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
clearvars -except res1 res2 res3 res4
%
%
figure (6)
sgtitle('2 U-turn periodogram') 
for i=1:size(res2,1)
relNums=res2(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res2(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
figure (6)
%subplot(1,2,1)
plot(1./f,L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')




mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res2(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
subplot(1,2,2)
plot(1./f,mean_L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
clearvars -except res1 res2 res3 res4
%
%
figure (7)
sgtitle('3 U-turn periodogram') 
for i=1:size(res3,1)
relNums=res3(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res3(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
figure (7)
subplot(1,2,1)
plot(1./f,L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')




mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res3(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
subplot(1,2,2)
plot(1./f,mean_L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
clearvars -except res1 res2 res3 res4
%
%
figure (8)
sgtitle('4 U-turn periodogram') 
for i=1:size(res4,1)
relNums=res4(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res4(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
figure (8)
subplot(1,2,1)
plot(1./f,L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')




mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res4(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
subplot(1,2,2)
plot(1./f,mean_L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
clearvars -except res1 res2 res3 res4
%
%