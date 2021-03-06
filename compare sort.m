function srav
global A
n=1:50:2300;
N=n';
X1=N.^2;
X2=N.*log(N);
X3=N;
X=[X1 X2 X3];
set(0,'RecursionLimit',20100)
for i=1:length(n)
    A=randperm(n(i));
    tic
    A=Heapsort(A);
    t_heap(i)=toc;

    A=randperm(n(i));
    tic
    A=puzir(A);
    t_puzir(i)=toc;
    
    A=randperm(n(i));
    tic
    A=insert_sort(A);
    t_insert(i)=toc;
    
    A=randperm(n(i));
    tic
    A=merge_sort(A);
    t_merge(i)=toc;   
    
     A=randperm(n);
     tic
 for u=1:3
     quick_sort(1, length(A));
     u=u+1;
 end
     t_quick(i)=toc;
end
G1=(t_heap)';
G2=(t_puzir)';
G3=(t_insert)';
G4=(t_merge)';
G5=(t_quick)';

GP1=regress(G1, X);
GP2=regress(G2, X);
GP3=regress(G3, X);
GP4=regress(G4, X);
GP5=regress(G5, X);

Gsort(1)=n(1);
Gsort(2)=n(2);
Gsort(3)=n(3);
Gsort(4)=n(4);
Gsort(5)=n(5);

figure
hold on
plot(N, t_heap, 'r')
plot(N, t_puzir, 'b')
plot(N, t_insert, 'c')
plot(N, t_merge, 'g')
plot(N, t_quick, 'm')

legend('Heapsort', 'puzir', 'insert_sort', 'merge_sort', 'quick_sort')
