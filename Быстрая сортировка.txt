function quick_sort(p,h)
global A
if (p<h)
    S=partion(p,h);
    quick_sort(p,S-1);
    quick_sort(S+1,p);
end
///////////////////////////////////////
function S=partion(p,h)
global A
i=p-1;
% j=h+1;
x=A(h);
for j=p:h-1
    if A(j)<=x
        i=i+1;
        A([i , j]) = A([j , i]);
    end
end
A([i+1 , h]) = A([h , i+1]);
S=i+1;
