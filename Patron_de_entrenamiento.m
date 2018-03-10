clear;
close all;
clc;

%Patron de entrenamiento
X = [1 2 3 4 5 6 7 8];
T = [0 1 2 3 2 1 2 1];

plot(X,T,'.','markersize',30)
axis([0 10 -1 4])
title('Funcion a aproximar')
xlabel('X')
ylabel('Target')

%Damos de alta la red
spread = 0.8;
red = newgrnn(X,T,spread);
Sal = red(X);

hold on
outputline = plot(X,Sal,'.','markersize',30,'color',[1 0 0]);
title('Target y salida de la red')
xlabel('X')
ylabel('T y A')

%Un punto a interpolar
x = 3.5;
y = red(x);
plot(x,y,'.','markersize',30,'color',[0 1 0]);
title('Nuevo valor')
xlabel('X y x')
ylabel('T y y')

%Funcion continua
x2 = 0:0.1:10;
y2 = red(x2);
plot(x2,y2,'linewidth',2,'color',[1 0 0])
title('Funcion a aproximar')
xlabel('X y x2')
ylabel('Target y y2')