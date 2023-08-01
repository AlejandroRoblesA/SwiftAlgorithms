import Foundation

public func descendingOrder(of number: Int) -> Int {
    var digitsArray: [Character] = [Character]()
    number.description.forEach { num in
        digitsArray.append(num)
    }
    let numberSorted: [Character] = digitsArray.sorted()
    let numberReversed: [Character] = numberSorted.reversed()
    var numberString: String = ""
    numberReversed.forEach { n in
        numberString.append(n)
    }
    return Int(numberString) ?? 0
}

public func descendingOrderSort(of number: Int) -> Int {
    return Int(String(number.description.sorted { $0 > $1 })) ?? 0
}
