clear all;
close all;
clc;
disp('BNP 50 1st Topic - Epidemiological Model');

beta = 0.5; % infectivity
lamda = 0.1; % recovery
delta = 0.02; % death
N = 1000;

t = linspace(0, 100, 1001);

v0 = [990;10;0;0];

[t z] = ode45(@(t, z) epidemic_odefn(z, t, beta, lamda, delta, N), t, v0);

figure(1);

subplot(2, 1, 1);
plot(t, z(:,1), 'r', t, z(:,2), 'g', t, z(:,3), 'b', t, z(:,4), 'black');
legend('Susceptible', 'Infected', 'Recovered', 'Dead');
xlabel('Time in Days');
ylabel('Population');
grid;

beta = 1; % infectivity
lamda = 0.1; % recovery
delta = 0.2;
[t z] = ode45(@(t, z) epidemic_odefn(z, t, beta, lamda, delta, N), t, v0);
subplot(2, 1, 2);
plot(t, z(:,1), 'r', t, z(:,2), 'g', t, z(:,3), 'b', t, z(:,4), 'black');
legend('Susceptible', 'Infected', 'Recovered', 'Dead');
xlabel('Time in Days');
ylabel('Population');
grid;