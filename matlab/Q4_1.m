Gp = tf([6], [15 1]); % plant transfer function

Kp = 1; % set constatnt of proportonality to 1
Ki = 8.354; % set constatnt of integration to 8.354

Gc = tf([Kp * 1 Kp * Ki], [1 0]); % controller transfer function
G = Gp * Gc; % forward path transfer function

figure; % create new figure
rlocus(G); % Plot the unity step response
sgrid; % apply grid of s plane

cleanfigure; % clean figure
matlab2tikz('Output/Q4_1.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Kp = 67.333; % set constatnt of proportonality to 67.333
Ki = 8.354; % set constatnt of integration to 8.354

Gc = tf([Kp * 1 Kp * Ki], [1 0]); % controller transfer function
G = Gp * Gc; % forward path transfer function
CLTF = feedback(G, 1); % closed loop transfer function

figure; % create new figure
step(CLTF); % Plot the unity step response

cleanfigure; % clean figure
matlab2tikz('Output/Q4_1_1.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w = linspace(1, 300 * pi, 500); % create frequency vector
[a, b, c] = bode(CLTF, w); % calculate bode plot

figure; % create new figure
set(gcf, 'Position', [105 100 650 200]); % set figure size
semilogx(w, squeeze(b)); % plot magnitude

xlabel('Frequency (rad/s)'); % set x label
ylabel('Phase (deg)'); % set y label

cleanfigure; % clean figure
matlab2tikz('Output/Q4_1_3.tex'); % convert to tex

figure; % create new figure
set(gcf, 'Position', [100 100 650 200]); % set figure size
semilogx(w, mag2db(squeeze(a))); % plot magnitude

title('Bode Diagram'); % set title
ylabel('Magnitude (dB)'); % set y label

cleanfigure; % clean figure
matlab2tikz('Output/Q4_1_2.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fb = bandwidth(CLTF) % calculate bandwidth
