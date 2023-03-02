clc;clf;clear all;close all;
pkg load signal;

x1 = input("Enter the input sequence: ");
shift = input("Enter the shift: ");
N = length(x1);
y1 = fft(x1);

x2 = circshift(x1,shift);
y2 = fft(x2);

for k = 1:N
  y(k) = y1(k)*exp(-j*2*pi*(k-1)*shift/N);
endfor

disp("DFT of x(n) = ");
disp(y1');
disp("DFT of x(n-m) = ");
disp(y2');
disp("DFT of x(n-m) by property = ");
disp(y');

if abs(y-y2)<10^(-10)
  disp("Time Shifting property of DFT is verified");
else
  disp("Time Shifting property of DFT is NOT verified");
endif
