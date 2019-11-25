function [ integral ] = ComputeIntegralOfPolynomial(coefficients, RangeOfX, RangeOfY)
    
    x = zeros(1, 10000);
    y = zeros(1, 10000);
    
    for i = 1 : 10000
        x(i) = RangeOfX(1) + (RangeOfX(2) - RangeOfX(1)) * rand();
        
        y(i) = RangeOfY(1) + (RangeOfY(2) - RangeOfY(1)) * rand();
    end
    
    figure()
    scatter(x, y, '.', 'b');
    hold on
    
    xlabel('x--->');
    ylabel('y--->');
    title('Monte-Carlo Simulation');
   
    xin = zeros(1, length(x));
    yin = zeros(1, length(x));
    pointsWithinCurve = 0;
    
    for i = 1 : length(x)
        
        PolValue = 0;
        
        for j = 1 : length(coefficients)
            PolValue = PolValue + coefficients(j) * (x(i) ^ j);
        end
        
        if PolValue > 0
            if y(i) < PolValue && y(i) > 0
                xin(i) = x(i);
                yin(i) = y(i);
                pointsWithinCurve = pointsWithinCurve + 1;
            else
                xin(i) = 0;
                yin(i) = 0;
            end
        else
            if y(i) > PolValue && y(i) < 0
                xin(i) = x(i);
                yin(i) = y(i);
                pointsWithinCurve = pointsWithinCurve + 1;
            else
                xin(i) = 0;
                yin(i) = 0;
            end
        end
        
    end
    
    totalPoints = length(x);
    squareArea = abs((RangeOfX(2) - RangeOfX(1)) * (RangeOfY(2) - RangeOfY(1)));
    
    integral = (squareArea / totalPoints) * pointsWithinCurve; 
        
    scatter(xin, yin, '.', 'r');
    hold off
    legend('Points outside the cuve','Points within the curve')
        
end