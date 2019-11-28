function [ result ] = MonteCarloInitialization( numberOfPoints, rangeOfX, rangeOfY )

    %%x = zeros(1, str2num(numberOfPoints));
    %%y = zeros(1, str2num(numberOfPoints));
    result.x = [];
    result.y = [];
    for i = 1 : numberOfPoints
        result.x(i) = rangeOfX(1) + (rangeOfX(2) - rangeOfX(1)) * rand();
        
        result.y(i) = rangeOfY(1) + (rangeOfY(2) - rangeOfY(1)) * rand();
    end
    
    figure()
    scatter(result.x, result.y, '.', 'b');
    hold on
    
    xlabel('x--->');
    ylabel('y--->');
    title('Monte-Carlo Simulation');
   
    result.xin = zeros(1, length(result.x));
    result.yin = zeros(1, length(result.x));
    
end

