Gp = tf([15], [1 150]) * tf([1], [1 8]); % plant transfer function

Kp = 24.32; % set constatnt of proportonality to 67.333
Ki = 31.075; % set constatnt of integration to 8.354

Gc = tf([Kp * 1 Kp * Ki], [1 0]) % controller transfer function
G = Gp * Gc; % forward path transfer function
CLTF = feedback(G, 1); % closed loop transfer function

figure; % create new figure
rlocus(CLTF); % Plot the unity step response
sgrid; % apply grid of s plane

cleanfigure; % clean figure
matlab2tikz('Output/Q4_2.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure; % create new figure
step(CLTF); % Plot the unity step response

cleanfigure; % clean figure
matlab2tikz('Output/Q4_2_1.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w = linspace(1, 300 * pi, 1000); % create frequency vector
[a, b, c] = bode(CLTF, w); % calculate bode plot

figure; % create new figure
set(gcf, 'Position', [105 100 650 200]); % set figure size
semilogx(w, squeeze(b)); % plot magnitude

xlabel('Frequency (rad/s)'); % set x label
ylabel('Phase (deg)'); % set y label

cleanfigure; % clean figure
matlab2tikz('Output/Q4_2_3.tex'); % convert to tex

figure; % create new figure
set(gcf, 'Position', [100 100 650 200]); % set figure size
semilogx(w, mag2db(squeeze(a))); % plot magnitude

title('Bode Diagram'); % set title
ylabel('Magnitude (dB)'); % set y label

cleanfigure; % clean figure
matlab2tikz('Output/Q4_2_2.tex'); % convert to tex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fb = bandwidth(CLTF) % calculate bandwidth
