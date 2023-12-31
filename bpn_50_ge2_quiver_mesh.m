clear all;
close all;
clc;
disp('BNP 50 1st Topic - Quiver');
beta = 0.5;
lamda = 0.1;
delta = 0.02;
N = 1000;  
v0 = [990;10;0];
[s, i, r] = meshgrid(0:5:50, 0:5:50, 0:5:50);
sdot=-beta.*s.*i.*1/N;
idot=beta.*s.*i.*1/N-lamda.*i-delta.*i;
rdot=lamda.*i;
quiver3(s,i,r,sdot,idot,rdot);
grid;
xlabel('S');
ylabel('I');
zlabel('R');