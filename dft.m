clc;clf;clear all;close all;

%sine wave input
f_s = 8000;
n_cycles = 1;
f = 1000;
t = 0:1/f_s:(n_cycles*1/f);
x = 3*sin(2*pi*f*t);
subplot(2,3,1);
stem(t,x);

N = 1000;
y = -pi:2*pi/N:pi-2*pi/N;

x = [x zeros(1,N-length(x))];
n = 0:length(x)-1;
e_jwn = exp(-j*2*pi*n/N);
X_wb = zeros(1,N);
for k = 0:N-1
  X_wb(1,k+1) = sum(x.*(e_jwn).^k);
endfor
subplot(2,3,2);
plot(y,abs(X_wb));

%sampling
N1 = 5;
y1 = -pi:(2*pi/N1):(pi-(2*pi/N1));
X_ws = 0;
for L = 1:N1-1
  X_ws(L) = X_wb(L*N/N1+1);
endfor
subplot(2,3,3);
##stem(y1,abs(X_ws));
stem(abs(X_ws));

%DFT
x = input("Enter a sequence:");
N = length(x);
n_t = 0:N-1;
subplot(2,3,4);
stem(n_t,x);
title("input signal");
xlabel("time");
ylabel("amplitude");

X=[]
for k = 1:N
  a = 0;
  for n = 1:N
    a = a + (x(n)*exp((-j*2*pi*(k-1)*(n-1))/N));
  endfor
 X = [X a];
endfor
disp(X);

subplot(2,3,5);
stem(n_t,abs(X));
title("Magnitude Response");
xlabel("frequency");
ylabel("Magnitude");
subplot(2,3,6);
stem(n_t,angle(X));
title("Phase Response");
xlabel("frequency");
ylabel("Phase");
