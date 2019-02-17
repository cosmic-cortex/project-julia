s = 0
upper_limit = 4000000

a, b = 0, 1

while true
    global a, b, s
    a, b = b, b+a

    if a % 2 == 1
        s += a
    end
    if b > upper_limit
        break
    end
end

println(s)
