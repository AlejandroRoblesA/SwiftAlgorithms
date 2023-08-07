import UIKit

func matrixMultiplication(_ a:[[Int]], _ b:[[Int]]) -> [[Int]] {
    var result = a
    for i in 0..<a.count {
        for j in 0..<a.count {
            result[i][j] = 0
        }
    }
    for i in 0..<a.count {
        for j in 0..<a.count {
            for k in 0..<a.count {
                result[i][j] = result[i][j] + a[i][k] * b[k][j]
            }
        }
    }
    return result
}

let a = [[2,0,1],[3,0,0],[5,1,1]]
let b = [[1,0,1],[1,2,1],[1,1,0]]
print(matrixMultiplication(a,b))
