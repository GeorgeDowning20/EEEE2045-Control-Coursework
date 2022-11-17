Gp = tf([20], [1 20]); % plant transfer function
step(Gp); % Plot the unity step response
axis([0 0.45 0 1.1]); % Set the axis limits

cleanfigure; % cleanfigure
matlab2tikz('Output/ex1.tex'); % convert to tex
