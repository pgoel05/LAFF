function [alpha] = dotProd_func(x,y)

%------Please follow dotProd_func.txt for DESCRIPTION------%

[m_x,n_x] = size(x);
[m_y,n_y] = size(y);

alpha = 0;

if (~isvector(x)) || (~isvector(y)) % Whether x and y are 
    alpha = "FAILED";               % row/column vectors or not
    return
end

if (m_x * n_x ~= m_y * n_y)         % Whether x and y are of same shape 
    alpha = "FAILED";               % or not
    return
end

if (n_x == 1)                       % x is a column vector
    if (n_y == 1)                   % y is column vector
        for i = 1:m_x
            alpha = alpha + (x(i,1) * y(i,1));
        end                  
    else                            % y is row vector
        for i = 1:m_x               
            alpha = alpha + (x(i,1) * y(i,1));
        end
    end
else                                % x is a row vector
    if (n_y == 1)                   % y is column vector
        for i = 1:n_x
            alpha = alpha + (x(1,i) * y(i,1));
        end                  
    else                            % y is row vector
        for i = 1:n_x               
            alpha = alpha + (x(1,i) * y(i,1));
        end
    end
end

return
end

