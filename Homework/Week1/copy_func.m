function [y_out] = copy_func(x,y)

%------Please follow copy_func.txt for DESCRIPTION------%

%   Finding number of rows and columns from both x & y
[m_x,n_x] = size(x);
[m_y,n_y] = size(y);

%   Checking whether x & y are similar row/column vectors or not
if (m_x ~= 1 && n_x ~= 1) || (n_y ~= 1 && n_y ~= 1)
    y_out = "FAILED";
    return
end

%   Checking whether x & y have same shape or not
if (m_x * n_x ~= m_y * n_y)
    y_out = "FAILED";
    return
end

if (n_x == 1)           %if x is a column vector 
    if (n_y == 1)       %if y is a column vector
        for i = 1:m_x
            y(i,1) = x(i,1);
        end
    else                %if y is a row vector
        for i = 1:m_x
            y(1,i) = x(i,1);
        end
    end
else                    %if x is a row vector
    if (n_y == 1)       %if y is a column vector
        for i = 1:n_x
            y(i,1) = x(1,i);
        end
    else                %if y is a row vector
        for i = 1:n_x
            y(1,i) = x(1,i);
        end
    end
end
        
y_out = y;              % Final output

return
end