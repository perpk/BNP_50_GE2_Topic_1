clear all;
close all;
clc;

beta = 0.5;
lamda = 0.1;
delta = 0.02;
N = 1000;

t = linspace(0, 100, 1001);
v0 = [990;10;0;0];

u = @(s,i,r) -beta.* s.* i.* 1/N;
v = @(s,i,r) beta.* s.* i.* 1/N - lamda.* i - delta.* i;
w = @(s,i,r) lamda.* i;

x = linspace(0,100,20);
y = linspace(0,100,20);
z = linspace(0,100,20);

[x y z] = meshgrid(x,y,z);

U = u(x,y,z);
V = v(x,y,z);
W = w(x,y,z);

quiver3(x,y,z,U,V,W);
xlabel('S');
ylabel('R')
zlabel('I')
grid on;
