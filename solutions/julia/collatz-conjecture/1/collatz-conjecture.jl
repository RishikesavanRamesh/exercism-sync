function collatz_steps(number::Integer)
    if number<=0
        throw(DomainError(number,"Input must be a positive integer"))
    end
    steps = 0
    while number != 1
        if iseven(number)
            number = div(number,2)
        else
            number = number*3 +1
        end
        steps = steps+1
    end

    steps
    
end

