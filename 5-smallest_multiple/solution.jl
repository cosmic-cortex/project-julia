function max_factor(n, factor)
    n % factor != 0 && return 0
    return max_factor(n ÷ factor, factor) + 1
end

function isprime(n)
    n < 2 && return false
    for i=2:round(Int, sqrt(n))
        n % i == 0 && return false 
    end
    return true
end

function least_common_multiple(numbers::Array)
    # assemble a list of primes
    primes = [x for x=1:maximum(numbers) if isprime(x)]
    # obtain prime factors
    factors = [max_factor(n, p) for n=numbers, p=primes]
    # get the exponents of the LCM
    exponents, _ = findmax(factors, dims=1)
    return prod(primes.^collect(Iterators.flatten(exponents)))
end

@time s = least_common_multiple(Array(1:20))
println(s)
