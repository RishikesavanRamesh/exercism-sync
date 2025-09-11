function sum_of_multiples(limit, factors)

    factors = filter(!=(0), factors)

    if isempty(factors)
        return 0
    end

    multiples = Set{Int}()
    for f in factors
        for n in f:f:limit-1
            push!(multiples, n)
        end
    end

    sum(multiples)
end
