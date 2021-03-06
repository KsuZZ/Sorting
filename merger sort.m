% 1
function A = merge_sort(A)
  if length(A) > 1
    A1 = A(1: fix(length(A) / 2));
    A2 = A(fix(length(A)/2) + 1:length(A));

    A1 = merge_sort(A1);
    A2 = merge_sort(A2);

    A = merge(A1, A2);
end
end
/////////////////////////////////////////////////
% 2
function C = merge(A,B)
set(0,'RecursionLimit',20100)
    if length(A) == 0
      C = B;
    elseif length(B) == 0
      C = A;
    else
      if A(1) <= B(1)
        C = [A(1) merge(A(2:end), B)];
      else
        C = [B(1) merge(A, B(2:end))];
    end
end
