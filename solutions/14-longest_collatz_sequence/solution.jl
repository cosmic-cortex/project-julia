upper_limit = 1000000

collatz(n) = n % 2 == 0 ? n ÷ 2 : 3*n + 1
find_chain_length(n) = n == 1 ? 1 : find_chain_length(collatz(n)) + 1

@time sol = argmax([find_chain_length(n) for n=1:upper_limit])
println(sol)

const chain_length = Dict{Int, Int}

function find_chain_length_v2(n)
    get!(chain_length, n) do n
        n == 1 ? 1 : find_chain_length(collatz(n)) + 1
    end
end

@time sol2 = argmax([find_chain_length(n) for n=1:upper_limit])
println(sol2)
