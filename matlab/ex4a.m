figure; % new figure
hold on;

PlotPlantResponse(0.2,'r'); %plot response of dampend plant
PlotPlantResponse(0.6,'g'); %plot response of dampend plant
PlotPlantResponse(1.2,'b'); %plot response of dampend plant
PlotPlantResponse(1.6,'k'); %plot response of dampend plant
PlotPlantResponse(3.0,'m'); %plot response of dampend plant

cleanfigure %cleanfigure
matlab2tikz('Output/ex4a.tex'); %convert to tex

function [] = PlotPlantResponse(a,colour)
time=0:0.01:6; 
Gp=tf([20],[1 a, 10]); % plant transfer function
step(Gp, time, colour); % Plot the unity step response
end