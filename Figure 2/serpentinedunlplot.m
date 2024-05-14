t=linspace(0.5,86,172);

%% plot data for dunlap 
plot(T,RES,'LineWidth',2)  %plot detrended dunlap data
xlim([0 90])
legend("Band1","Band2","Band3","Band4")
xlabel("Time(hour)")
ylabel("Fluroescence Intensity (A.U.)")
figure(1)

%% serpentine channel
%g is raw data from 5 different serpentine channels
figure (2)
res=dtrndanl2log(g);   %detrend data 
B = smoothdata(res,2); %smooth data for visualization
plot(t,B,'LineWidth',2)
xlabel("Time(hour)")
ylabel("Fluorescence Intensity (A.U.) ")
legend("Serpentine 1","Serpentine 2","Serpentine 3","Serpentine 4","Serpentine 5")
xlim([0,90])

