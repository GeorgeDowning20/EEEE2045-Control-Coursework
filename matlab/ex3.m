figure; % new figure
hold on;

PlotPlantResponse(1,'b'); %plot response of dampend plant
PlotPlantResponse(10,'r'); %plot response of dampend plant
PlotPlantResponse(20,'g'); %plot response of dampend plant
PlotPlantResponse(100,'k'); %plot response of dampend plant


cleanfigure % clean figure
matlab2tikz('Output/ex3.tex');  % convert to tex

function [] = PlotPlantResponse(a,colour)
    Gp=tf([10],[1 10]) 
    Temp=tf([a], [1 a]) % this is a/(s+a) for a=1
    G=Gp*Temp % Multiply them both together
    step(G,colour) % Plot the unity step response
end 