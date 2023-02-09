clc;clf;clear all;close all;

x = input("Enter a Sequence: ");
start = input("Enter the position of starting point of the signal: ");
n = start:length(x)+start-1;
subplot(3,2,1);
stem(n,x);
title("Original signal");
xlabel("time ---->");
ylabel("amplitude ---->");

%Time Reversal
subplot(3,2,2);
stem(-n,x);
title("Reversed signal");
xlabel("time ---->");
ylabel("amplitude ---->");

%Time Shifting
shift = input("Enter the shifting factor: ");
n_left = start-shift:(start+length(x)-1 -shift);
n_right = start+shift:(start+length(x)-1 +shift);
subplot(3,2,3);
stem(n_left,x);
title("Left shifted signal");
xlabel("time ---->");
ylabel("amplitude ---->");
subplot(3,2,4);
stem(n_right,x);
title("Right Shifted signal");
xlabel("time ---->");
ylabel("amplitude ---->");

%Time Sacling
exp_factor = input("Enter the Exapansion factor: ");
e = zeros(1,length(x)/exp_factor);
e(1:1/exp_factor:end) = x;
n_exp = 0:length(e)-1;
subplot(3,2,5);
stem(n_exp,e);
title("Expanded signal");
xlabel("time ---->");
ylabel("amplitude ---->");

comp_factor = input("Enter the Compression factor: ");
c = x(1:comp_factor:end);
n_comp = 0:length(c)-1;
subplot(3,2,6);
stem(n_comp,c);
title("Compressed signal");
xlabel("time ---->");
ylabel("amplitude ---->");

