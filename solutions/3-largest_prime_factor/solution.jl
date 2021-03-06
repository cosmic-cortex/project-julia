function largest_prime_factor(n)
    for i=2:trunc(Int, sqrt(n))
        n % i  == 0 && return largest_prime_factor(n ÷ i)
    end
    
    return n
end

n = 600851475143
@time sol = largest_prime_factor(n)
println(sol)

