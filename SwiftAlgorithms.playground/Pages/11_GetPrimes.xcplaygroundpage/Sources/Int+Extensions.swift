import Foundation

extension Int {
    func isPrime() -> Bool {
        var counter = 0
        for divisor in 1...self {
            if self % divisor == 0 {
                counter = counter + 1
            }
        }
        return counter == 2
    }
}
