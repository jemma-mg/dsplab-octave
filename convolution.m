clc;clf;clear all;close all;

x = input("Enter the input sequence: ");
h = input("Enter the impulse response: ");
len_x = length(x);
len_h = length(h);
L = len_x + len_h -1;

zp_x = [x zeros(1,L-len_x)];
zp_h = [h zeros(1,L-len_h)];
Y = [];

for n = 1:L
  y(n) = 0;
  for k = 1:n
    y(n) = y(n) + zp_x(k)*zp_h(n-k+1);
  endfor
  Y = [Y y(n)];
endfor
disp("Linear convolution by property: ")
disp(Y);

y1 = [];
d = zp_h;
for i = 1:L
  c = [zeros(1,i-1) d(1:L-i+1)];
  y1(:,i) = c;
endfor
result = y1*zp_x';
disp("Linear convolution by Toeplitz matrix: ");
disp(result');
