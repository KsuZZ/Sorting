function A=puzir(A)
n=length(A);
t0=0;
for i=1:n
if A(i)==0
t0=t0+1;
end
for j=i:-1:2
if A(j)<A(j-1);
t=A(j-1);
A(j-1)=A(j);
A(j)=t;
end
end
end
