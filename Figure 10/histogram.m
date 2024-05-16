% Plot histogram for velocity agaisnt number of nuuclei

ax1 = subplot(1,2,1); % Left subplot
histfit(Vnuclei,20,'normal')
xlabel('velocity(\mum/min)','FontSize',30,'FontWeight','b')
ylabel('Number of Nuclei','FontSize',30,'FontWeight','b')


ax2 = subplot(1,2,2); % Right subplot
histfit(g,13,'normal')
xlabel('velocity(\mum/min)','FontSize',30,'FontWeight','b')
ylabel('Hyphal Tip','FontSize',30,'FontWeight','b')
