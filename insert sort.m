function A=insert_sort(A)
for i=2:1:numel(A)
x=A(i);
j=i-1;
while j>0 && x<A(j)
A(j+1)=A(j);
j=j-1;
A(j+1)=x;
end
end
