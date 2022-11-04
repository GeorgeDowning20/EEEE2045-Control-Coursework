figure;
hold on;

a = 1;
Gp=tf([10],[1 10]) % this is the original plant
Temp=tf([a], [1 a]) % this is a/(s+a) for a=1
G=Gp*Temp % Multiply them both together
step(G,'b') % Plot the unity step response

a = 10;
Gp=tf([10],[1 10]) % this is the original plant
Temp=tf([a], [1 a]) % this is a/(s+a) for a=1
G=Gp*Temp % Multiply them both together
step(G,'r') % Plot the unity step response

a = 20;
Gp=tf([10],[1 10]) % this is the original plant
Temp=tf([a], [1 a]) % this is a/(s+a) for a=1
G=Gp*Temp % Multiply them both together
step(G, 'g') % Plot the unity step response

a = 100;
Gp=tf([10],[1 10]) % this is the original plant
Temp=tf([a], [1 a]) % this is a/(s+a) for a=1
G=Gp*Temp % Multiply them both together
step(G,'k') % Plot the unity step response

cleanfigure
matlab2tikz('Output/ex3.tex'); 