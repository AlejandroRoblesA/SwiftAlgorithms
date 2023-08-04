import Foundation

public let numbers = [0,1,2,3,4,5,6,7,8,9,10]
public let primes = [2,3,5,7,11,13]
public let pairs = [2,4,6,8,10]
public let emptyArray = [Int]()

public func sumElements(in array: [Int]) -> Int {
    var sumElements = 0
    for number in array {
        sumElements += number
    }
    return sumElements
}

public func sumElementsUsingReduce(in array: [Int]) -> Int {
    return array.reduce(0) { result, element in result + element }
}
