%%Plotting codes for experimental and model data
clear all

load("MCphi_model.mat")
load("matlab data number of cycles.mat")


%Set time intervals 
%for experimental data
tLo=0; tHi=10;
tt=linspace(tLo,tHi,480);

%for model data
TLo=0; THi=10;
TT=linspace(TLo,THi,240);

% figure (1)
% %%Plot data based on realtime 
% %Plot  experimental data
% plot(tt,phi_single_t,'LineWidth',2); %experimental data Top segment
% hold on
% plot(tt(70:480),phi_single,'LineWidth',2);  %experimental data Middle segment
% plot(tt(134:480),phi_single_b,'LineWidth',2); %experimental data Bottom segment
% 
% % Plot model data on same graph
% plot(TT(33:240),MCphi1,"--",'LineWidth',2); %model data segment 1
% plot(TT(67:240),MCphi2,"--",'LineWidth',2); %model data segment 2
% plot(TT(99:240),MCphi3,"--",'LineWidth',2);  %model data segment 3
% set(gca,"FontSize",30)
% xlabel('Time(Days)','FontSize',30,'FontWeight','b')
% ylabel('Number of Cycles','FontWeight','bold','FontSize',30);
% lgd = legend('Top segment experimental data','Middle segment experimental data','Bottom segment experimental data','Segment 1 hyphal clock model','Segment 2 hyphal clock model','Segment 3 hyphal clock model')
% lgd.FontSize = 18;


figure 
%%Plot data based on all data starting from 0
%Plot experimental data
plot(tt,phi_single_t,'LineWidth',2);  %experimental data Top segment
hold on
plot(tt(1:411),phi_single,'LineWidth',2); %experimental data Middle segment
plot(tt(1:347),phi_single_b,'LineWidth',2); %experimental data Bottom segment


% Plot model data on same graph
plot(TT(1:208),MCphi1,"--",'LineWidth',2); %model data segment 1
plot(TT(1:174),MCphi2,"--",'LineWidth',2); %model data segment 2
plot(TT(1:142),MCphi3,"--",'LineWidth',2);  %model data segment 3
set(gca,"FontSize",30)
xlabel('Time(Days)','FontSize',30,'FontWeight','b')
ylabel('Number of Cycles','FontWeight','bold','FontSize',30);
lgd = legend('Top segment experimental data','Middle segment experimental data','Bottom segment experimental data','Segment 1 hyphal clock model','Segment 2 hyphal clock model','Segment 3 hyphal clock model')
lgd.FontSize = 18;

