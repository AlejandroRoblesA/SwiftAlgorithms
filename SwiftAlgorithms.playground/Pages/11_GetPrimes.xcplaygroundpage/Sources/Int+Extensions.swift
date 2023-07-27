import Foundation

extension Int {
    func isPrime() -> Bool {
        guard self != 0 else { return false }
        var counter = 0
        for divisor in 1...self {
            if self % divisor == 0 {
                counter = counter + 1
            }
        }
        return counter == 2
    }

    func isPrimeContains() -> Bool {
        return self > 1 && !(2..<self).contains { self % $0 == 0 }
    }
}
