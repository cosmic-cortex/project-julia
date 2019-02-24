function find_nth_prime(n)
    primes = zeros(Int64, n)
    primes[1] = 2
    
    candidate=3; i = 2; j = 1;
    while i <= n
        flag = true
        for j=1:i-1
            candidate % primes[j] == 0 && (candidate += 1; flag = false; break)
        end
        flag && (primes[i] = candidate; i += 1; candidate +=1)
    end
    
    return primes[n]
end

@time sol = find_nth_prime(10001)
println(sol)
