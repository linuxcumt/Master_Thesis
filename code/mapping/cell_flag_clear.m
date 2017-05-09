function [flag] = cell_flag_clear(x,y)
    global gridsize
    persistent x_old y_old
    if isempty(x_old)
        x_old = 0;
        y_old = 0;
    end
    x_check = x - mod(x, 1/gridsize);
    y_check = y - mod(y, 1/gridsize);
    if  (x_old ~= x_check) || (y_old ~= y_check)
        flag = 1;
    else 
        flag = 0;
    end
    x_old = x_check;
    y_old = y_check;
end