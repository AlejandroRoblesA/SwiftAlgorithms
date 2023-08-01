import Foundation

public func twosum(numbers: [Double], target: Double) -> [Int] {
    for indexI in 0..<(numbers.count-1) {
        for indexJ in (indexI+1)..<numbers.count {
            if numbers[indexI] + numbers[indexJ] == target {
                return [indexI, indexJ]
            }
        }
    }
    return []
}
