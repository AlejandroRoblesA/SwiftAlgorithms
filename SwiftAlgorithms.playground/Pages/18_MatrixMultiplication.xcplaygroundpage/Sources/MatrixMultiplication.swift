import Foundation

public func matrixMultiplication(_ a:[[Int]], _ b:[[Int]]) -> [[Int]] {
    guard a.count == b.count else { return [] }
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
