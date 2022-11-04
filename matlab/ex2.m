figure;
hold on;

Gp=tf([1],[1 1])
step(Gp,'b')

Gp=tf([3],[1 3])
step(Gp,'r')

Gp=tf([12],[1 12])
step(Gp,'g')

Gp=tf([20],[1 20])
step(Gp,'k')

cleanfigure; 
matlab2tikz('Output/ex2.tex');

figure;
Gp=tf([20],[1 -20])
step(Gp)
axis([0 1 0 500000]);
cleanfigure
matlab2tikz('Output/ex2_2.tex'); 
