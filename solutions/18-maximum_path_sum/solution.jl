const triangle = open("./triangle.txt") do f
    lines = [[parse(Int, n) for n in split(l)] for l in readlines(f)]
    n_lines = length(lines)
    triangle = zeros(Int, (n_lines, n_lines))
    for i=1:n_lines, j=1:i
        triangle[i, j] = lines[i][j]
    end
    return triangle
end

lp = zeros(Int64, size(triangle))
# initialization
lp[1, 1] = triangle[1, 1]
for i=2:size(lp, 1)
    lp[i, 1] = lp[i-1, 1] + triangle[i, 1]
    lp[i, i]  = lp[i-1, i-1] + triangle[i, i]
end

# finding the rest of the table
for i=3:size(lp, 1), j=2:i
    lp[i, j] = triangle[i, j] + max(lp[i-1, j], lp[i-1, j-1])
end

println(max(lp[size(lp, 1), :]...))
