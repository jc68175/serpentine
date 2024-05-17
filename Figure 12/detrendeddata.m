
%top section of serpentine
clear all
load('top.mat')
res=dtrndanl2(p_top');
B = smoothdata(res);
tLo=0; tHi=10;
tt=linspace(tLo,tHi,480); %%time interval for experimental data
yyaxis left
plot(tt,B,'-','color','blue','LineWidth',2);
xlabel("Time(Days)")
ylabel("Fluroescence Intensity (A.U.)")
hold on

clear all
%mid section of serpentine
load('mid.mat')
g_less=p_mid(70:480); %% remove data in the beginning from time point we start analyzing
res=dtrndanl2(g_less');
B = smoothdata(res);
tLo=0; tHi=10;
tt=linspace(tLo,tHi,480);
plot(tt(70:480),B,'-','LineWidth',2,'color','r');

clear all
%bottom section of serpentine
load('botfinal.mat')
plot(tt(134:480),B,'-','LineWidth',2,'color','y');


clear all
%%load model data 
load('modeldetrenddata.mat')

%time interval for model data
TLo=0; THi=10;
TT=linspace(TLo,THi,240);
hold on
yyaxis right
plot(TT(33:240),I,"--",'LineWidth',2,'color','m');
plot(TT(67:240),J,"--",'LineWidth',2,'color','g');
plot(TT(99:240),K,"--",'LineWidth',2,'color','c');
legend("Top segment experimental data","Middle segment experimental data","Bottom segment experimental data","Segment 1 hyphal clock model","Segment 2 hyphal clock model","Segment 3 hyphal clock model")
ylabel("Fluroescence Intensity (A.U.)")
