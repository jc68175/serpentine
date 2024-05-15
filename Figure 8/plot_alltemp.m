clear all
%% serpentine channel for 24C temperature
load('data_24C.mat')
g = [s24_1(1:280,1),s24_2(1:280,1),s24_3(1:280,1),s24_4(1:280,1),s24_5(1:280,1)
];
res=dtrndanl2(g);


for i=1:size(res,1)
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end


relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
%figure 
%plot(1./f,L_pxx,'Linewidth', 3)
%xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
%ylabel('Periodogram','FontSize',15,'FontWeight','b')
%set(gca,'fontsize',10,'FontWeight','b')
%set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
%legend('s2-1','s2-2','s3_1','s3_3','s3_5')

%periodogram for average of 5 channels

mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
figure 
plot(1./f,mean_L_pxx,'Linewidth', 3)
xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
ylabel('Periodogram','FontSize',15,'FontWeight','b')
set(gca,'fontsize',10,'FontWeight','b')
set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
hold on
clear all

%% serpentine channel for 25C temperature
load('data_25C.mat')

t = linspace(30,240,421);
g = [s25_1(10:end,1),s25_2(24:end,1),s25_3(28:end,1),s25_4(15:end,1),s25_5(27:end,1),s25_6(18:end,1), ...
    s25_7(10:end,1),s25_8(18:end,1),s25_9(16:end,1),s25_10(18:end,1),s25_11(17:end,1),s25_12(23:end,1), ...
];
g1 = g(1:280,:);
res=dtrndanl2(g1);




for i=1:size(res,1)
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
%figure 
%plot(1./f,L_pxx,'Linewidth', 3)
%xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
%ylabel('Periodogram','FontSize',15,'FontWeight','b')
%set(gca,'fontsize',10,'FontWeight','b')
%set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
%legend('s1','s2','s3','s4','s5','s6','s7','s8','s9','s10','s11','s12')



mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
%figure 
plot(1./f,mean_L_pxx,'Linewidth', 3)
clear all
hold on

%% serpentine channel for 27C temperature
load('data_27C.mat')
t = linspace(34.5,180,292);
g = [s1,s2,s4,s5,s6];
g1= g(60:end,:);

res=dtrndanl2(g1);







 
for i=1:size(res,1)
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
% figure
% plot(1./f,L_pxx,'Linewidth', 3)
% xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
% ylabel('Periodogram','FontSize',15,'FontWeight','b')
% set(gca,'fontsize',10,'FontWeight','b')
% set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')




mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
% figure 
plot(1./f,mean_L_pxx,'Linewidth', 3)

hold on
clear all

%% serpentine channel for 29C temperature
load('data_29C.mat')

g = [s29_1(1:280,1),s29_2(1:280,1),s29_3(1:280,1),s29_4(1:280,1),...
    s29_5(1:280,1),s29_6(1:280,1),s29_7(1:280,1),s29_8(1:280,1),...
    s29_9(1:280,1),s29_10(1:280,1),s29_11(1:280,1),s29_12(1:280,1)
];
res=dtrndanl2(g);


for i=1:size(res,1)
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
% figure 
% plot(1./f,L_pxx,'Linewidth', 3)
% xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
% ylabel('Periodogram','FontSize',15,'FontWeight','b')
% set(gca,'fontsize',10,'FontWeight','b')
% set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
% legend('s0-1','s0-2','s0-3','s0-5','s0-6','s1-1','s1-2','s1-3','s1-5','s1-6','s2-1','s2-3')
% 


mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
plot(1./f,mean_L_pxx,'Linewidth', 3)

hold on

clear all


%% serpentine channel for 30C temp
load('data_30C.mat')
g=[s1,s3,s4,s5,s6];
%g = [s1(1:280,1),s2(1:280,1),s3(1:280,1),s4(1:280,1),s5(1:280,1),s6(1:280,1),s7(1:280,1)
%];
res=dtrndanl2(g);




for i=1:size(res,1)
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%   pxx(1)=[];
 L_pxx(i,:)=pxx/sum(pxx);%%normalize periodogram value or not


end

relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];
% figure 
% plot(1./f,L_pxx,'Linewidth', 3)
% xlabel('Period (Hours)','FontSize',15,'FontWeight','b')
% ylabel('Periodogram','FontSize',15,'FontWeight','b')
% set(gca,'fontsize',10,'FontWeight','b')
% set(findall(gcf,'type','hggroup'),'fontsize',10,'FontWeight','b')
% legend('s1','s3','s4','s5','s6')



mean_L_pxx=mean(L_pxx(:,1:size(L_pxx,2)));
% mean_L_pxx(1)=[];
relNums=res(i,:);
[pxx,f] = periodogram(relNums,[],length(relNums),2);%length(relNums)
%    f(1)=[];


plot(1./f,mean_L_pxx,'Linewidth', 3)


hold on 
legend('24^{\circ}C','25^{\circ}C','27^{\circ}C','29^{\circ}C','30^{\circ}C')