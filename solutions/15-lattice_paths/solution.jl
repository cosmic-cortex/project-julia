
init(i, j) = i == 1 || j == 1 ? max(i, j) + 1 : 0

n = 30
paths = [init(i, j) for i=1:n, j=1:n]

for j=2:n, i=2:n
    paths[i, j] = paths[i-1, j] + paths[i, j-1]
end

println(paths[n, n])
