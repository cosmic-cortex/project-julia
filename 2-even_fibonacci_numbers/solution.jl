function even_fibonacci_numbers(upper_limit)
    s = 0
    a, b = 0, 1
    while true
        a, b = b, b+a
        if a % 2 == 1
            s += a
        end
        if b > upper_limit
            break
        end
    end
    return s
end

upper_limit = 4000000
@time sol = even_fibonacci_numbers(upper_limit)
println(sol)
