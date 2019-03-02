init(i, j) = i == 1 || j == 1 ? max(i, j) + 1 : 0

paths = [init(i, j) for i=1:20, j=1:20]

for j=2:20, i=2:20
    paths[i, j] = paths[i-1, j] + paths[i, j-1]
end

println(paths[20, 20])
