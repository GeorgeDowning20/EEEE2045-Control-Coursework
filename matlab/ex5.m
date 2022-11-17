Gp = tf([10], [1 10]); % plant transfer function

Kp = 1; % set constatnt of proportonality to 1
Gc = tf([Kp]); % controller transfer function
G = Gc * Gp; % forward path transfer function

rlocus(G); % Plot root locus of forward path transfer function
sgrid; % apply grid of s plane

cleanfigure; % clean figure
matlab2tikz('Output/ex5.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Kp = 1; % set constatnt of proportonality to 1
Ki = 205; % set constatnt of integration to 205

Gc = tf([Kp Kp * Ki], [1 0]); % controller transfer function
G = G * Gc; % forward path transfer function

figure; % create new figure
rlocus(G); % Plot the unity step response
sgrid; % apply grid of s plane

cleanfigure; % clean figure
matlab2tikz('Output/ex5_1.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Kp = 39.1; % set constatnt of proportonality to 38.9
Ki = 205; % set constatnt of integration to 205

Gc = tf([Kp Kp * Ki], [1 0]); % controller transfer function
G = G * Gc; % forward path transfer function
CLTF = feedback(G, 1) % closed loop transfer function

figure; % create new figure
step(CLTF); % Plot the unity step response

cleanfigure; % clean figure
matlab2tikz('Output/ex5_2.tex'); % convert to tex
