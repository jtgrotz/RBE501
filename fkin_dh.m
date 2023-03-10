function x = fkin_dh(thetas,ds,as,alphas)
    l = length(thetas);
    x = eye(4);
    for i = 1:l
        temp = [cos(thetas(i)) -sin(thetas(i))*cos(alphas(i)) sin(thetas(i))*sin(alphas(i)) as(i)*cos(thetas(i));
        sin(thetas(i)) cos(thetas(i))*cos(alphas(i)) -cos(thetas(i))*sin(alphas(i)) as(i)*sin(thetas(i));
        0 sin(alphas(i)) cos(alphas(i)) ds(1);
        0 0 0 1];
        x = x*temp;
    end
    %sin(A+B) = sin(A)cos(B) + cos(A)sin(B)
    %cos(A+B) = cos(A)cos(B) + sin(A)sin(B)
end
