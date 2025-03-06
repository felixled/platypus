function res = depol_chan(p,mode)
if (nargin<2)
    mode = 'isom';
end

phi = [1;0;0;1];
Phi = phi*phi';
[X,Y,Z] = paulis;
I = eye(2);
K= {sqrt(1-p)*eye(2),sqrt(p/3)*X,sqrt(p/3)*Y,sqrt(p/3)*Z};

switch mode
    case 'choi'
        res = (1-p)*Phi + p/3*(kron(I,X)*Phi*kron(I,X)' + kron(I,Y)*Phi*kron(I,Y)' + kron(I,Z)*Phi*kron(I,Z)');
    case 'kraus'
        res = {sqrt(1-p)*eye(2),sqrt(p/3)*X,sqrt(p/3)*Y,sqrt(p/3)*Z};
    case 'isom'
        res = chanconv(K,'kraus','isom');
    case 'linop'
        res = chanconv(K,'kraus','linop');
end
end