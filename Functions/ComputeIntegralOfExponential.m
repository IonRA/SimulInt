function [ integral ] = ComputeIntegralOfExponential( numberOfPoints, coefficient, rangeOfX, rangeOfY)

    initializationResult = MonteCarloInitialization(numberOfPoints, rangeOfX, rangeOfY);
    
    x = initializationResult.x;
    y = initializationResult.y;
    xin = initializationResult.xin;
    yin = initializationResult.yin;
    pointsWithinCurve = 0;
    
    for i = 1 : length(x)
        
        ExpValue = coefficient * exp(x(i));
        
        if IsWithinCurve(y(i), ExpValue) == true
            xin(i) = x(i);
            yin(i) = y(i);
            pointsWithinCurve = pointsWithinCurve + 1;
        else
            xin(i) = 0;
            yin(i) = 0;
        end
        
    end
    
    totalPoints = length(x);
    squareArea = abs((rangeOfX(2) - rangeOfX(1)) * (rangeOfY(2) - rangeOfY(1)));
    
    integral = (squareArea / totalPoints) * pointsWithinCurve; 
        
    scatter(xin, yin, '.', 'r');
    hold off
    legend('Points outside the cuve','Points within the curve')

end