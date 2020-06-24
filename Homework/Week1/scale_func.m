function [x_out] = scale_func(alpha,x)

%------Please follow scale_func.txt for DESCRIPTION------%

[m_x,n_x] = size(x);

if (m_x ~= 1 && n_x ~= 1)       % Whether x is a column/row vector or not
    x_out = "FAILED";
    return
end

if ~isscalar(alpha)             % Whether alpha is a scalar or not
    x_out = "FAILED";
end

if (n_x == 1)                   % x is a column vector
    for i = 1:m_x
        x(i,1) = alpha * x(i,1);
    end
else                            % x is a row vector
    for i = 1:n_x
        x(1,i) = alpha * x(1,i);
    end

x_out = x;

return
end