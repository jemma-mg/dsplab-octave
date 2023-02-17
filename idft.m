clc;clf;clear all;close all;

x = input("Enter the sequence: ");
N = length(x);
n_t = 0:length(x)-1;
subplot(211);
stem(n_t,x);
title("Fourier Transform of signal");
xlabel("frequency");
ylabel("amplitude");

X=[];
for k=1:N
  a=0;
  for n=1:N
    a = a + x(n).*exp(j*2*pi*(k-1)*(n-1)/N);
  endfor
  X = [X a];
endfor
X = X/N;
subplot(212);
stem(n_t,X);
title("Original signal");
xlabel("time");
ylabel("amplitude");
