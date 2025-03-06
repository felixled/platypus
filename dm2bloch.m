function v = dm2bloch(R)
I = eye(2);
x = [0,1;1,0]; y = [0,-1i;1i,0]; z = [1,0;0,-1];

w0 = trace(I*R)/2;
w1 = trace(x*R)/2;
w2 = trace(y*R)/2;
w3 = trace(z*R)/2;

v = [w0;w1;w2;w3];
end