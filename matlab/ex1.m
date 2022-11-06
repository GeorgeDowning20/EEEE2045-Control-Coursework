Gp=tf([20],[1 20]) % plant transfer function
step(Gp) % Plot the unity step response

cleanfigure %cleanfigure
matlab2tikz('Output/ex1.tex'); % convert to tex