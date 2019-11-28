function [ result ] = ReadAndComputeFunc( description, numberOfPoints, rangeOfX, rangeOfY )
    fprintf(description);
    
    choice = input('Enter your choice:');

    switch choice
        case 1 
            result.coefficientsFunc =  input('Input the coefficient for e^x:'); 
            result.integral = ComputeIntegralOfExponential(numberOfPoints, result.coefficientsFunc, rangeOfX, rangeOfY);
        case 2
            result.coefficientsFunc =  input('Input the coefficient for ln(x):'); 
            result.integral = ComputeIntegralOfLogarithm(numberOfPoints, result.coefficientsFunc, rangeOfX, rangeOfY);
        case 3
           result.coefficientsFunc = input('Input the coefficients of the polynomial in braces:'); 
           result.integral = ComputeIntegralOfPolynomial(numberOfPoints, result.coefficientsFunc, rangeOfX, rangeOfY);
    end
    
end
