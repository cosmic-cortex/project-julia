sum_of_squares(n) = div(2*n^3 + 3*n^2 + n, 6)
square_of_sums(n) = div(n^2 + n, 2)^2

@time sol = square_of_sums(100) - sum_of_squares(100)
println(sol)
