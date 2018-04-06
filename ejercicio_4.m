X=[0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
T=[0.000 0.373 0.51 0.471 0.335 0.171 0.031 -0.061 -0.102 -0.103 -0.079];

plot(X,T,'.','markersize',30)
axis([-1 6 -0.5 1])
title('Function to approximate.')
xlabel('X')
ylabel('T')

spread = 0.7;
net = newgrnn(X,T,spread);
A = net(X);

hold on
outputline = plot(X,A,'.','markersize',30,'color',[0 0 1]);
title('Create and test y network.')
xlabel('X')
ylabel('T and A')

X2 = -1:.1:6;
Y2 = net(X2);
plot(X2,Y2,'linewidth',2,'color',[0 0 1])
title('Function to approximate.')
xlabel('X and X2')
ylabel('T and Y2')

spread = 1;
net = newgrnn(X,T,spread);
A = net(X);

hold on
outputline = plot(X,A,'.','markersize',30,'color',[0 1 0]);
title('Create and test y network.')
xlabel('X')
ylabel('T and A')

X2 = -1:.1:6;
Y2 = net(X2);
plot(X2,Y2,'linewidth',2,'color',[0 1 0])
title('Function to approximate.')
xlabel('X and X2')
ylabel('T and Y2')


spread = 0.1;
net = newgrnn(X,T,spread);
A = net(X);

hold on
outputline = plot(X,A,'.','markersize',30,'color',[1 0 0]);
title('Create and test y network.')
xlabel('X')
ylabel('T and A')

X2 = -1:.1:6;
Y2 = net(X2);
plot(X2,Y2,'linewidth',2,'color',[1 0 0])
title('Function to approximate.')
xlabel('X and X2')
ylabel('T and Y2')
