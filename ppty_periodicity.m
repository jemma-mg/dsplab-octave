clc;clf;clear all;close all;
pkg load signal;

x = input("Enter the input sequence: ");
N = length(x);
x = [x x];

for k=1:3*N
  y(k)=0;
  for n=1:N
    y(k) = y(k) + x(n).*exp(-j*2*pi*(n-1)*(k-1)/N);
  endfor
endfor

disp("DFT of input for 1st period 1 to N");
disp(y(1:N)');
disp("DFT of input for 2nd period N+1 to 2N");
disp(y(N+1:2*N)');
disp("DFT of input for 3rd period 2N+1 to 3N");
disp(y(2*N+1:3*N)');

if abs(y(1:N) - y(N+1:2*N))<10^(-10)
  disp("Periodicity property of DFT is verified for periods 1 and 2");
elseif abs(y(2*N+1:3*N) - y(N+1:2*N))<10^(-10)
  disp("Periodicity property of DFT is verified for periods 2 and 3");
else
  disp("Periodicity property of DFT is NOT verified");
endif
