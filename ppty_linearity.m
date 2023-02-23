clc;clf;clear all;close all;
pkg load signal;

x1 = input("sequence 1: ");
x2 = input("sequence 2: ");
a = input("scalar 1: ");
b = input("scalar 2: ");

y1 = fft(x1);
y2 = fft(x2);

X = fft(a*x1+b*x2);
disp(X);
Y = a*y1+b*y2;
disp(Y);

if abs(X-Y)<10^(-10)
  disp("Linearity property of DFT is verified");
else
  disp("Linearity property of DFT is NOT verified");
endif
