clear all;
close all;
clc;

t = linspace(0, 100, 1001);

N = 1000;

v0 = [990;10;0];

figure;
hold on;
grid on;
xlabel('R');
ylabel('I');
zlabel('S');

for beta=0.5:0.1:1
    for lamda=0.1:0.1:1
        for delta=0.02:0.1:1
            [t, z] = ode45(@(t, z) epidemic_odefn_phases(z, t, beta, lamda, delta, N), t, v0);
            plot3(z(:,2), z(:,3), z(:,1));
        end % for delta
    end % for lamda
end % for beta
