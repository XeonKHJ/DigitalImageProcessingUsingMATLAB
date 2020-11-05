gmean = @(A)prod(A, 1)^1/size(A, 1);

f = padarray(f, [m n], 'replicate');

g = colfilt(f, [m n], 'sliding', @gmean);
