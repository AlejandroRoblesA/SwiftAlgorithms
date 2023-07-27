import Foundation

public func getPrimes(from start: Int, to end: Int) -> [Int] {
    let value = getInitalValues(startR: start, endR: end)
    var primeNumbers = [Int]()
    for number in value.start...value.end {
        if number.isPrime() {
            primeNumbers.append(number)
        }
    }
    return primeNumbers
}

private func getInitalValues(startR: Int, endR: Int) -> (start: Int, end: Int) {
    var start = startR < endR ? startR : endR
    var end = startR > endR ? startR : endR
    start = start == 0 ? 1 : start
    end = end == 0 ? 1 : end
    return (start, end)
}

public func getPrimesUsingRecursion(from start: Int, to end: Int) -> [Int] {
    return end < start ? getPrimes(from:end, to:start) : (start...end).filter({$0.isPrimeContains()})
}

public func getPrimesUsingFilter(from start: Int, to end: Int) -> [Int] {
    return (min(start, end)...max(start, end)).filter { $0.isPrime() }
}
