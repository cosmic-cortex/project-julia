function multiples_of_3_and_5(upper_limit)
    s = 0
    for i=1:upper_limit-1
        if (i % 3 == 0) | (i % 5 == 0)
           s += i
        end
    end
    return s
end

upper_limit = 1000
@time sol = multiples_of_3_and_5(upper_limit)
println(sol)
