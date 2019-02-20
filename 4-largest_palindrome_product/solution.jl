function ispalindrome(n)
    s = string(n)
    return s == reverse(s)
end

function isproduct(n)
    for i=100:999
        if (n % i == 0) & (99 < n ÷ i < 1000)
            return true
        end
    end
    return false
end

for i=999*999:-1:1
    if ispalindrome(i) && isproduct(i)
        println(i)
        break
    end
end 


