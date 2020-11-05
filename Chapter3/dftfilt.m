function g = dftfilt(f, H, classout)
%DFTFILT 此处显示有关此函数的摘要
%   此处显示详细说明

[f, revertClass] = tofloat(f);
F = fft2(f, size(H, 1), size(H, 2));
g = ifft2(H.*F);
g = g(1:size(f, 1), 1:size(f, 2));
if nargin == 2 || strcmp(classout, 'original')
    g = revertClass(g);
elseif strcmp(classout, 'fltpoint')
    return
else
    error('Undefined class for the output image.')
end

end

