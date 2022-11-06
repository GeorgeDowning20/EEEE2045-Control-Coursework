
K=1
G=tf([10*K],[1]) % plant transfer function
temp = tf([1 205],[1 10])
gs=G*temp;
rlocus(gs) % Plot the unity step response
figure
bode(gs)
figure
step(gs)
cleanfigure %cleanfigure
matlab2tikz('Output/ex5.tex'); % convert to tex