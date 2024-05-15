load("single_filament_data")
gmean = mean(single);
x = linspace(1,12,12);
plot(x,gmean,'linestyle','-', 'Color','r', 'LineWidth', 1);
xlabel('Position')
ylabel('Mean FL over time')
title('Single filament tracking')
xlim([1,12])