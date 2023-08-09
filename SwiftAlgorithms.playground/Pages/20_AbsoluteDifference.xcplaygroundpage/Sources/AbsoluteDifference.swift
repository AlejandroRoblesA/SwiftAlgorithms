import Foundation

public func diagonalDifference(array: [[Int]]) -> Int {
    var diagonalLeftToRight = 0
    var diagonalRightToLeft = 0
    for indexI in 0..<array.count {
        for indexJ in 0..<array.count {
            if indexI == indexJ {
                diagonalLeftToRight = diagonalLeftToRight + array[indexI][indexJ]
            }
            if indexJ == array.count-1 - indexI {
                diagonalRightToLeft = diagonalRightToLeft + array[indexI][indexJ]
            }
        }
    }
    return abs(diagonalLeftToRight - diagonalRightToLeft)
}
