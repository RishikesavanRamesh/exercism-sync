function success_rate(speed)
    if speed == 0 
        return 0*0.01
    elseif 1 <= speed <= 4 
        return 100*0.01
    elseif 5 <= speed <=8 
        return 90*0.01
    elseif speed == 9
        return 80*0.01
    elseif speed == 10
        return 77*0.01
    else 
        return 0*0.01
    end
end

function production_rate_per_hour(speed)
    success_rate(speed)*221*speed
end

function working_items_per_minute(speed)
    Int(production_rate_per_hour(speed)÷60)
end
