import Foundation

extension Array<Int> {
    public func factorialSumDigits() -> Int {
        var sum = 0
        for digit in self {
            sum = sum + digit.factorial()
        }
        return sum
    }
}
