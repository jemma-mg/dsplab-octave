clc;clf;clear all;close all;

%impulse
t = -5:0.005:5;
y = [zeros(1,1000),ones(1,1),zeros(1,1000)];
subplot(4,2,1);
plot(t,y,'g');
title("Unit Impulse function");
xlabel("time -->");
ylabel("amplitude -->");
axis([-5 5 0 2]);

%step
t = -5:0.005:5;
y = [zeros(1,1000),ones(1,1001)];
subplot(4,2,2);
plot(t,y,'g');
title("Unit Step function");
xlabel("time -->");
ylabel("amplitude -->");
axis([-5 5 0 2]);

%ramp
t = 0:0.005:5;
y = t;
subplot(4,2,3);
plot(t,y,'r');
grid on;
title("Unit Ramp function");
xlabel("time -->");
ylabel("amplitude -->");

%parabolic
t = 0:0.005:5;
y = t.^2;
subplot(4,2,4);
plot(t,y,'r');
grid on;
title("Unit Parabolic function");
xlabel("time -->");
ylabel("amplitude -->");

%rectangular
t = -5:0.005:5;
y = [zeros(1,800),ones(1,401),zeros(1,800)];
subplot(4,2,5);
plot(t,y,'m');
title("Rectangular function");
xlabel("time -->");
ylabel("amplitude -->");
axis([-5 5 0 2]);

%exponential
t = -2:0.005:10;
y = exp(t);
subplot(4,2,6);
plot(t,y,'m');
title("Exponential function");
xlabel("time -->");
ylabel("amplitude -->");

%sine
t = 0:0.005:5;
f = 1/2;
y = sin(2*pi*f*t);
subplot(4,2,7);
plot(t,y);
title("Sine function");
xlabel("time -->");
ylabel("amplitude -->");

%cosine
t = 0:0.005:5;
f = 1/2;
y = cos(2*pi*f*t);
subplot(4,2,8);
plot(t,y);
title("Cosine function");
xlabel("time -->");
ylabel("amplitude -->");
