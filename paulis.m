function [X,Y,Z] = paulis(flag)
% The qubit Pauli matrices
X = [0,1;1,0];
Y = [0,-1i;1i,0];
Z = [1,0;0,-1];

if (exist('flag','var'))
    X = sparse(X);
    Y = sparse(Y);
    Z = sparse(Z);
end
end