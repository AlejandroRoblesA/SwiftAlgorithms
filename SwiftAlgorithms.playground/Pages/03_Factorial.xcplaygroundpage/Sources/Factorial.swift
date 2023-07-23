import Foundation

public func factorial(of number: UInt) {
    guard number != UInt.zero else { print("\(number)! = 1"); return }
    var product: UInt = 1
    for i in 1...number {
        product = product * i
    }
    print("\(number)! = \(product)")
}

public func factorialRecursive(of number: UInt) -> UInt {
    guard number != UInt.zero else { return 1 }
    return number * factorialRecursive(of: number - 1)
}
