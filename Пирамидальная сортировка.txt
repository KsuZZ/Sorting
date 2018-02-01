% 1
function A=Heapsort(A)
%global A
n=length(A);
A=buildHeap(A);
heap_size=n;
for i=n:-1:2
    A([i 1])=A([1 i]);
  heap_size=heap_size-1;
    A=HeapFy(A, 1, heap_size); 
end
end
////////////////////////////////////////////////
% 2
function A=HeapFy (A, i, heap_size)
% global heap_size
    L=left(i);
	R=right(i);
 if L<=heap_size && A(L)>A(i)  
    largest=L;
else
    largest=i;
end
 if R<=heap_size && A(R)>A(largest)  
    largest=R;
end
if i~=largest
     A([i largest])=A([largest i]);
A=HeapFy(A, largest, heap_size);
end
end
////////////////////////////////////////////////
% 3
function A=buildHeap(A)
% global A
n=length(A);
for i=fix(n/2):-1:1
    A=HeapFy(A, i, n);
end
//////////////////////////////////////////////////

function i=left(i)
i=2*i;
end
function i=right(i)
i=2*i+1;
end
