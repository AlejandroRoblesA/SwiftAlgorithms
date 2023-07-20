import Foundation

public func oneToOnehundredNumbers() -> [Int] {
    var numbers = [Int]()
    for number in 1...100 {
        numbers.append(number)
    }
    return numbers
}

public func printNumbersFizzAndBuzz(numbers: [Int]) {
    for number in numbers {
        if number % 15 == 0 {
            print("FizzBuzz")
        } else if number % 3 == 0 {
            print("Fizz")
        } else if number % 5 == 0 {
            print("Buzz")
        } else {
            print(number)
        }
    }
}
