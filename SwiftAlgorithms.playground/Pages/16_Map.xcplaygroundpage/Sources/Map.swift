import Foundation

public let numbers = [0,1,2,3,4,5,6,7,8,9,10]
public let primes = [2,3,5,7,11,13]
public let emptyArray = [Int]()

public func multiply(array: [Int], withNumber: Int) -> [Int] {
    var transformArray = [Int]()
    for number in array {
        transformArray.append(number*withNumber)
    }
    return transformArray
}
