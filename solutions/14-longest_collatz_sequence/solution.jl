collatz(n) = n % 2 == 0 ? n ÷ 2 : 3*n + 1

function cacher(func)
    cache = Dict()
    
    function cached_function(n)
        val = get(cache, n, 0)
        val != 0 && return val
        result = func(n)
        cache[n] = result
        return result
    end
    
    return cached_function
end

find_chain_length(n) = n == 1 ? 1 : find_chain_length(collatz(n)) + 1
cached_chain_length = cacher(find_chain_length)

function find_longest_chain(upper_limit)
    return argmax([cached_chain_length(n) for n=1:upper_limit])
end

@time sol = find_longest_chain(1000000)
println(sol)
