import Foundation

extension Int {
    public func factorial() -> Int {
        guard self >= 1 else { return 1 }
        var factorial = 1
        for i in 1...self {
            factorial = factorial * i
        }
        return factorial
    }
    
    public func transformNumberInArrayOfDigits() -> [Int] {
        guard self.description.count >= 2 else { return [self] }
        var numberInDigits = [Int]()
        for digit in self.description {
            numberInDigits.append(Int(String(digit)) ?? 0)
        }
        return numberInDigits
    }
}
