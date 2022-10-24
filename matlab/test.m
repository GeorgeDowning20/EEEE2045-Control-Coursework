x = 0:0.05:2;
y = sin(x.^2);
figure
plot(x,y)
matlab2tikz('myfile.tex'); 