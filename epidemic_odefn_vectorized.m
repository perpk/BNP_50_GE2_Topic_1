function zdot = epidemic_odefn_vectorized(z, t, beta, lamda, delta, N, result_vector_size) 
    zdot = zeros(4, result_vector_size);

    % dS(t)/dt
    zdot(1,:) = -beta.* z(1).* z(2).* 1/N;

    % dI(t)/dt
    zdot(2,:) = beta.* z(1).* z(2).* 1/N - lamda.* z(2) - delta.* z(2);

    % dR(t)/dt
    zdot(3,:) = lamda.* z(2);

    %dD(t)/dt
    zdot(4,:) = delta.* z(2);

    zdot = zdot(:);
end