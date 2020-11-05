function g = intrans(f, method, varargin)

%检查输入的数量
error(nargchk(2, 4, nargin))

if strcmp(method, 'log')
    g = logTransform(f, varargin{:});
    return;
end

if isfloat(f) && (max(f(:))>1||min(f(:))<0)
    f = mat2gray(f);
end

[f, revertclass] = tofloat(f);

switch method
    case 'neg'
        g = imcomlement(f);
    case 'gamma'
        g = gammaTransform(f, varagin{:});
    case 'stretch'
        g = stretchTransform(f, varargin{:});
    case 'specified'
        g = spcfiedTransform(f, varargin{:});
    otherwise
        error("Unknown enhancement method.")
end

