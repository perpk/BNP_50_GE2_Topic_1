clear all;
close all;
clc;
disp('BNP 50 - Lab');

beta = 0.5;
lamda = 0.1;
delta = 0.02;
N = 1000;

t = linspace(0, 100, 1001);

figure;
hold on;
grid on;
for s = 990:100:2000
    for i = 10:100:2000
        for r = 0:100:2000
            [t, sir] = ode45(@(t, sir) epidemic_odefn_phases(sir, t, beta, lamda, delta, N), t, [s, i, r]);
            plot3(sir(:,1), sir(:,2), sir(:,3));
        end % for r
    end % for i
end % for s



