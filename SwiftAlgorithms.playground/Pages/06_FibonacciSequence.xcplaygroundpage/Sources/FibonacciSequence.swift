import Foundation

public func fibonacciSequenceFor(numberSteps: Int) -> [Int] {
    var sequence = [0,1]
    if numberSteps <= 1 { return sequence }
    for _ in 0...numberSteps - 2 {
        let first = sequence[sequence.count - 2]
        guard let second = sequence.last else { return [] }
        sequence.append(first + second)
    }
    return sequence.dropLast()
}

public func fibonacciRecursionSequenceFor(numberSteps: Int, first: Int = 0, second: Int = 1) -> [Int] {
    if numberSteps == 0 { return [] }
    return [first + second] + fibonacciRecursionSequenceFor(numberSteps: numberSteps - 1,
                                                            first: second,
                                                            second: first + second)
}

public func fibonacciRecursion(sizeSequence: Int) -> [Int] {
    if sizeSequence <= 2 { return [0,1] }
    var fibonacciSequence = [0,1] + fibonacciRecursionSequenceFor(numberSteps: sizeSequence)
    for _ in 0..<2 {
        fibonacciSequence = fibonacciSequence.dropLast()
    }
    return fibonacciSequence
}
