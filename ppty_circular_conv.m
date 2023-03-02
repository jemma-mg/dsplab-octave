clc;clf;clear all;close all;
pkg load signal;

x1 = input("Enter the input sequence 1: ");
x2 = input("Enter the input sequence 2: ");
N1 = length(x1);
N2 = length(x2);
x1 = [x1 zeros(1,N2-N1)];
x2 = [x2 zeros(1,N1-N2)];

x = cconv(x1,x2,max(N1,N2));
X = fft(x);

y1 = fft(x1);
y2 = fft(x2);

Y = y1.*y2;

disp("DFT of x1 = ");
disp(y1');
disp("DFT of x2 = ");
disp(y2');
disp("DFT of convolution of x1 and x2 = ");
disp(X');
disp("DFT of convolution of x1 and x2 by property = ");
disp(Y');

if abs(X-Y)<10^(-10)
  disp("Cicular Convolution property of DFT is verified");
else
  disp("Cicular Convolution property of DFT is NOT verified");
endif
