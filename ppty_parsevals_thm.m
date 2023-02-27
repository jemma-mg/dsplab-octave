clc;clf;clear all;close all;
pkg load signal;

x = input("Enter the input sequence: ");
N = length(x);
y = fft(x);

X = sum((abs(x)).^2);
Y = sum((abs(y)).^2)/N;

disp("sum of |x|^2");
disp(X);
disp("1/N*sum of |DFT(x)|^2");
disp(Y);

if abs(X=Y)
  disp("Parseval's Theorem of DFT is verified");
else
  disp("Parseval's Theorem of DFT is NOT verified");
endif
