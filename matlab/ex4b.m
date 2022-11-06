figure; % new figure
hold on;

PlotPlantResponse(5,'r'); %plot response of dampend plant
PlotPlantResponse(7,'g'); %plot response of dampend plant
PlotPlantResponse(10,'b'); %plot response of dampend plant
PlotPlantResponse(25,'k'); %plot response of dampend plant
PlotPlantResponse(35,'m'); %plot response of dampend plant

cleanfigure % clean figure
matlab2tikz('Output/ex4b.tex');  % convert to tex

function [] = PlotPlantResponse(a,colour)
    Gp = tf([100],[1 12 100]);
    Temp=tf([a], [1 a]) % this is a/(s+a) for a=1
    G=Gp*Temp % Multiply them both together
    step(G,colour); % Plot the unity step response
end