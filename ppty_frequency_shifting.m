clc;clf;clear all;close all;
pkg load signal;

x1 = input("Enter the input sequence: ");
shift = input("Enter the shift: ");
N = length(x1);
y1 = fft(x1);

for k = 1:N
  x2(k) = x1(k)*exp(j*2*pi*(k-1)*shift/N);
endfor
y2 = fft(x2);

y = circshift(y1,shift);

disp("DFT of x(n) = ");
disp(y1');
disp("DFT of e^(j*2*pi*n*m/N)*x(n-m) = ");
disp(y2');
disp("DFT of e^(j*2*pi*n*m/N)*x(n-m) by property = ");
disp(y');

if abs(y-y2)<10^(-10)
  disp("Frequency Shifting property of DFT is verified");
else
  disp("Frequency Shifting property of DFT is NOT verified");
endif
