s = 0
upper_limit = 1000
for i=1:upper_limit-1
    if (i % 3 == 0) | (i % 5 == 0)
       global s += i
    end
end
println(s)
