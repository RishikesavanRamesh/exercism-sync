
aliquotesum(n) = sum(factor for factor in 1:n÷2 if iszero(mod(n,factor)))


function isperfect(n)
    n > 0 || throw(DomainError(n, "Must be positive"))
    aliquotesum(n) == n
end

function isabundant(n)
    n > 0 || throw(DomainError(n, "Must be positive"))
    aliquotesum(n) > n 
end

function isdeficient(n)
    n > 0 || throw(DomainError(n, "Must be positive"))
    aliquotesum(n) < n
end