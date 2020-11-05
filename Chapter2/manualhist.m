function p = manualhist

%初始化
repeats = true;
quitnow = 'x';

while repeats
    s = input("Enter m1, sig1, m2, sig2, A1, A2, k or x to quit:",'s');
    if strcmp(s, quitnow)
        break
    end
    
    v = str2num(s);
    if numel(v) ~= 7
        disp('Incorrect number of inputs.')
        continue
    end
    
    p = twomodegauss(v(1), v(2), v(3), v(4), v(5), v(6), v(7));
    
    figure, plot(p)
    xlim([0 255])
end
        