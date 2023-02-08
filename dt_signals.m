clc;clf;clear all;close all;

%impulse
n = -5:0.5:5;
y = [zeros(1,10),ones(1,1),zeros(1,10)];
subplot(4,2,1);
graph = stem(n,y);
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Unit Impulse function");
axis([-5 5 0 2]);

%step
n = -5:0.5:5;
y = [zeros(1,10),ones(1,11)];
subplot(4,2,2);
graph = stem(n,y);
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Unit Step function");
axis([-5 5 0 2]);

%ramp
n = 0:0.5:10;
y = n;
subplot(4,2,3);
graph = stem(n,y,'c');
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Unit Ramp function");

%parabolic
n = 0:0.5:10;
y = n.^2;
subplot(4,2,4);
graph = stem(n,y,'c');
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Unit Parabolic function");

%rectangular
n = -5:0.5:5;
y = [zeros(1,8),ones(1,5),zeros(1,8)];
subplot(4,2,5);
graph = stem(n,y,'g');
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Rectangular function");

%exponential
n = -10:1:10;
y = exp(n/5)
subplot(4,2,6);
graph = stem(n,y,'g');
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Exponential function");

%Sine
n = -10:1:10;
f = 1/10;
y = sin(2*pi*f*n);
subplot(4,2,7);
graph = stem(n,y,'b');
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Sine function");

%Cosine
n = -10:1:10;
f = 1/10;
y = cos(2*pi*f*n);
subplot(4,2,8);
graph = stem(n,y,'b');
set(graph,"markersize",4);
xlabel("time ---->");
ylabel("amplitude ---->");
title("Cosine function");


