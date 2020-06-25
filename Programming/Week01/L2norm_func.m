function [alpha] = L2norm_func(x)

%------Please follow L2norm_func.txt for DESCRIPTION------%

[m_x,n_x] = size(x);
alpha = 0;

if (~isvector(x))               % Whether x is a column/row vector or not
    alpha = "FAILED";
    return
end

if (n_x == 1)                   % x is a column vector
    for i = 1:m_x
        alpha = alpha + x(i,1)^2;
    end
else                            % x is a row vector
    for i = 1:n_x
        alpha = alpha + x(1,i)^2;
    end
end

alpha = sqrt(alpha);
return
end

