function [ coefficientsFunc ] = ReadAndComputeFunc( description )
    fprintf('%s', description);
    
    choice = input();

    switch choice
        case 1 
            coefficientsFunc =  input('Input the coefficient for e^x in braces:'); 
        case 2
            coefficientsFunc =  input('Input the coefficient for ln(x) in braces:'); 
        case 3
           coefficientsFunc = input('Input the coefficients of the polynomial in braces:'); 
    end
end

