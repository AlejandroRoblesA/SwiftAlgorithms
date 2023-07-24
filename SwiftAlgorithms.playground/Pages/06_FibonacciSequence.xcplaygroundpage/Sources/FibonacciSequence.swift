import Foundation

public func fibonacciSequenceFor(numberSteps: Int) -> [Int] {
    var sequence = [0,1]
    if numberSteps <= 1 {
        return sequence
    }
    for _ in 0...numberSteps - 2 {
        let first = sequence[sequence.count - 2]
        guard let second = sequence.last else { return [] }
        sequence.append(first + second)
    }
    return sequence.dropLast()
}

