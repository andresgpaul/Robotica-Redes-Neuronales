X = [1 1.5 2 2.5 3 4 5];
f = exp(X.*(-1/2)).*cos(X);
%f = [0.3277 0.0644 -0.5048 -1.2148 -1.8014 -1.5858 0.8602]; %Not in
%radians

plot(X,f,'.','markersize',30)
axis([0 6 -0.5 0.5])
title('Function to approximate')
xlabel('X')
ylabel('f')

spread = 0.8;
net = newgrnn(X,f,spread);
A = net(X);

hold on
outputline = plot(X,A,'.','markersize',30,'color',[1 0 0]);
title('Create and test y network')
xlabel('X')
ylabel('f and A')

x = 0:0.1:6;
y = net(x);
plot(x,y,'linewidth',2,'color',[1 0 0])
title('Function to approximate')
xlabel('X and x')
ylabel('f and y')

spread = 0.3;
net = newgrnn(X,f,spread);
A = net(X);

hold on
outputline = plot(X,A,'.','markersize',30,'color',[0 1 0]);
title('Create and test y network')
xlabel('X')
ylabel('f and A')

x = 0:0.1:6;
y = net(x);
plot(x,y,'linewidth',2,'color',[0 1 0])
title('Function to approximate')
xlabel('X and x')
ylabel('f and y')
