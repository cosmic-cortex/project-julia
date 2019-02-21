function collatz(n)
   n % 2 == 0 && return n ÷ 2
   return 3*n + 1
end

global chain_lengths = Dict(1 => 1)

function find_chain_length(n)
    next = collatz(n)
    length_at_next = get(chain_lengths, next, 0)
    length_at_next != 0 && (chain_lengths[n] = length_at_next + 1; return length_at_next + 1)
    chain_lengths[n] = 1 + find_chain_length(next)
end

@time max_chain_element = argmax([find_chain_length(n) for n=1:1000000])
println(max_chain_element)
