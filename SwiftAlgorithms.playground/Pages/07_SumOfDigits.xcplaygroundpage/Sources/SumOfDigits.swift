import Foundation

public func digitalRoot(of number: Int) -> Int {
    var sum = 0
    var stringNumber = ""
    for digit in number.description {
        guard let digit = Int(String(digit)) else { return 0 }
        sum = sum + digit
        stringNumber = String(sum)
    }
    return stringNumber.count > 1 ? digitalRoot(of: sum) : Int(stringNumber) ?? 0
}

public func digitalMathRoot(of number: Int) -> Int {
    return (number-1) % 9 + 1
}
