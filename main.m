close all;
clc;

coefficientsFirstPoly = input('Input the coefficients of the first polynomial in braces:');
coefficientsSecondPoly = input('Input the coefficients of the second polynomial in braces:');

RangeOfX = input('Input the range of x in braces:');
RangeOfY = input('Input the range of y in braces:');

firstIntegral = ComputeIntegralOfPolynomial(coefficientsFirstPoly, RangeOfX, RangeOfY);
secondIntegral = ComputeIntegralOfPolynomial(coefficientsSecondPoly, RangeOfX, RangeOfY);

fprintf('The area under the first polynomial is = %f units \n', firstIntegral);
fprintf('The area under the second polynomial is = %f units \n', secondIntegral);
fprintf('First integral - Second integral = %f units \n', firstIntegral - secondIntegral);