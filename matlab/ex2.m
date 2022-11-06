figure; %new figure
hold on;

Gp=tf([1],[1 1])% plant transfer function
step(Gp,'b')    % Plot the unity step response

Gp=tf([3],[1 3])% plant transfer function
step(Gp,'r')    % Plot the unity step response

Gp=tf([12],[1 12])  % plant transfer function
step(Gp,'g')        % Plot the unity step response

Gp=tf([20],[1 20])  % plant transfer function
step(Gp,'k')        % Plot the unity step response

cleanfigure;    %clean figure
matlab2tikz('Output/ex2.tex'); %convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure; %new figure

Gp=tf([20],[1 -20]) % plant transfer function
step(Gp)            % Plot the unity step response

axis([0 1 0 500000]);   % change axis

cleanfigure;    %clean figure
matlab2tikz('Output/ex2_2.tex'); %convert to tex
