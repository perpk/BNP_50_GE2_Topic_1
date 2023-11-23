function zdot = epidemic_odefn_phases(z, t, beta, lamda, delta, N) 
    zdot = zeros(3, 1);

    % dS(t)/dt
    zdot(1) = -beta * z(1) * z(2) * 1/N;

    % dI(t)/dt
    zdot(2) = beta * z(1) * z(2) * 1/N - lamda * z(2) - delta * z(2);

    % dR(t)/dt
    zdot(3) = lamda * z(2);

end