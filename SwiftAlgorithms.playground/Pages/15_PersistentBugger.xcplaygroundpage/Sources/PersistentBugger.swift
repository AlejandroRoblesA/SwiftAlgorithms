import Foundation

public func persistence(for number: Int) -> Int {
    return number.description.count == 1 ? 0 : recursive(number: number)
}

private func recursive(number: Int, counter: Int = 0) -> Int {
    var multiplicationResult: Int = 1
    for digit in number.description where number.description.count > 1 {
        multiplicationResult = multiplicationResult * (Int(String(digit)) ?? 0)
    }
    return multiplicationResult.description.count == 1 ? counter + 1 : recursive(number: multiplicationResult, counter: counter + 1)
}

public func persistenceCompactMap(for number: Int) -> Int {
  let digits: [Int] = String(number).compactMap { Int(String($0)) }
  return digits.count == 1 ? 0 : 1 + persistenceCompactMap(for: digits.reduce(1, *))
}
