

func matrixMultiplication(_ a:[[Int]], _ b:[[Int]]) -> [[Int]] {
    var result = a
    result[0][0] = a[0][0] * b[0][0] + a[0][1] * b[1][0]
    result[0][1] = a[0][0] * b[0][1] + a[0][1] * b[1][1]
    result[1][0] = a[1][0] * b[0][0] + a[1][1] * b[1][0]
    result[1][1] = a[1][0] * b[0][1] + a[1][1] * b[1][1]
    return result
}

let a = [[1,2],[3,2]]
let b = [[3,2],[1,1]]
print(matrixMultiplication(a,b))
