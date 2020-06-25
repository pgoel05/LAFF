function [y_out] = axpy_func(a,x,y)

%------Please follow axpy_func.txt for DESCRIPTION------%

[m_x,n_x] = size(x);
[m_y,n_y] = size(y);

if ~isscalar(a)                     % Whether a is scalar or not
    y_out = "FAILED";
    return
end

if (~isvector(x)) || (~isvector(y)) % Whether x and y are 
    y_out = "FAILED";               % row/column vectors or not
    return
end

if (m_x * n_x ~= m_y * n_y)         % Whether x and y are of same shape 
    y_out = "FAILED";               % or not
    return
end

if (n_x == 1)                       % x is a column vector
    if (n_y == 1)                   % y is a column vector
        for i = 1:m_x
            y(i,1) = (a * x(i,1)) + y(i,1); 
        end
    else                            % y is a row vector
        for i = 1:m_x
            y(1,i) = a * x(i,1) + y(1,i); 
        end
    end
else                                % x is a row vector
    if (n_y == 1)                   % y is a column vector
        for i = 1:n_x
            y(i,1) = (a * x(1,i)) + y(i,1); 
        end
    else                            % y is a row vector
        for i = 1:n_x
            y(1,i) = a * x(1,i) + y(1,i); 
        end
    end
end

y_out = y;

return
end

