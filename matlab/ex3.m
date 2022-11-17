figure; % new figure
hold on; % hold on to the figure

PlotPlantResponse(1, 'b'); %plot response of dampend plant
PlotPlantResponse(10, 'r'); %plot response of dampend plant
PlotPlantResponse(20, 'g'); %plot response of dampend plant
PlotPlantResponse(1000000, 'k'); %plot response of dampend plant
axis([0 6 0 1.1]); % set axis limits

cleanfigure; % clean figure
matlab2tikz('Output/ex3.tex'); % convert to tex

function [] = PlotPlantResponse(a, colour)
    Gp = tf([10], [1 10]); % define plant
    Temp = tf([a], [1 a]); % this is a/(s+a) for a=1
    G = Gp * Temp; % Multiply them both together
    step(G, colour); % Plot the unity step response
end
