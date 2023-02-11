clc;clf;clear all;close all;

%rectangular pulse input
n_t = -10:1:10;
x_t = [zeros(1,8),ones(1,5),zeros(1,8)];
subplot(2,3,1);
stem(n_t,x_t);
title("Rectangular pulse");
xlabel("samples -->");
ylabel("amplitude -->");

w = -3*pi:0.01:3*pi;
for f = 1:length(w)
  X(f) = 0;
  for n = 1:length(x_t)
    X(f) = X(f) + (x_t(n).*(exp(-j.*w(f).*n_t(n))));
  endfor
endfor
subplot(2,3,2);
plot(w,abs(X));
title("Magnitude Spectrum");
xlabel("frequency -->");
ylabel("magnitude -->");
subplot(2,3,3);
plot(w,angle(X));
title("Phase Spectrum");
xlabel("frequency -->");
ylabel("phase -->");

%sine wave input
f = 1/10;
x1 = sin(2*pi*f*n_t);
subplot(2,3,4);
stem(n_t,x1);
title("Sine Wave Input");
xlabel("samples -->");
ylabel("amplitude -->");
w = -3*pi:0.01:3*pi;

for f = 1:length(w)
  Y(f)=0;
  for n = 1:length(x_t)
    Y(f) = Y(f) + (x1(n).*exp(-j.*w(f).*n_t(n)));
  endfor
endfor
subplot(2,3,5);
plot(w,abs(Y));
title("Magnitude Spectrum");
xlabel("frequency -->");
ylabel("magnitude -->");
subplot(2,3,6);
plot(w,angle(Y));
title("Phase Spectrum");
xlabel("frequency -->");
ylabel("phase -->");
