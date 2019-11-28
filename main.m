close all;
clc;

rangeOfX = input('Input the range of x in braces:');
rangeOfY = input('Input the range of y in braces:');

numberOfPoints = input('Input the number of points to be scattered:');

fisrtFunction = ReadAndComputeFunc('Choose the first fucntion from: [1] e^x [2] ln(x) [3] polynomial \n', numberOfPoints, rangeOfX, rangeOfY);
secondFunction = ReadAndComputeFunc('Choose the second fucntion: [1] e^x [2] ln(x) [3] polynomial \n', numberOfPoints, rangeOfX, rangeOfY);

fprintf('The area under the first function is = %f units \n', fisrtFunction.integral);
fprintf('The area under the second function is = %f units \n', secondFunction.integral);
fprintf('First integral - Second integral = %f units \n', fisrtFunction.integral - secondFunction.integral);