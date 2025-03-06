function flag = check_psd(X)
tol = 1e-10;
flag = true;
if (norm(X-X')>tol)
    flag = false;
else
    X = (X+X')/2;
    if (min(eig(X))<-tol)
        flag = false;
    end
end
end