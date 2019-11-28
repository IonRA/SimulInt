function [ result ] = IsWithinCurve( y, curveValue )

    if isreal(curveValue)
        if curveValue > 0
            if y < curveValue && y > 0
                result = true;
            else
                result = false;
            end
        else
            if y > curveValue && y < 0
                result = true;
            else
                result = false;
            end
        end
    end

end

