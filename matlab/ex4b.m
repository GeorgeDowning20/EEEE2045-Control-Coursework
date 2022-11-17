figure; % new figure
hold on; % hold on to the figure

PlotPlantResponse(5, 'r'); % plot response of dampend plant
PlotPlantResponse(7, 'g'); % plot response of dampend plant
PlotPlantResponse(10, 'b'); % plot response of dampend plant
PlotPlantResponse(25, 'k'); % plot response of dampend plant
PlotPlantResponse(35, 'm'); % plot response of dampend plant

cleanfigure; % clean figure
matlab2tikz('Output/ex4b.tex'); % convert to tex

figure; % new figure
hold on; % hold on to the figure
sgrid on; % turn on the grid
pzmapResponse(5, 'r'); % plot response of dampend plant
pzmapResponse(7, 'g'); % plot response of dampend plant
pzmapResponse(10, 'b'); % plot response of dampend plant
pzmapResponse(25, 'k'); % plot response of dampend plant
pzmapResponse(35, 'm'); % plot response of dampend plant
h = findobj(gca, 'type', 'line'); % get all lines
set(h, 'markersize', 10, 'linewidth', 1.2); % set line width
axis([-40 0 -9 9]); % set axis

cleanfigure; % clean figure
matlab2tikz('Output/ex4b_1.tex'); % convert to tex

function [] = PlotPlantResponse(a, colour)
    Gp = tf([100], [1 12 100]);
    Temp = tf([a], [1 a]); % this is a/(s+a) for a=1
    G = Gp * Temp; % Multiply them both together
    step(G, colour); % Plot the unity step response
end

function [] = pzmapResponse(a, colour)
    Gp = tf([100], [1 12 100]);
    Temp = tf([a], [1 a]); % this is a/(s+a) for a=1
    G = Gp * Temp; % Multiply them both together
    pzplot(G, colour); % Plot the unity step response
end
