import Foundation

public func lonelyInteger(array: [Int]) -> Int {
    let dictionaryElements: [Int: Int] = groupValuesInDictionary(from: array)
    return getUniqueValue(in: dictionaryElements)
}

private func groupValuesInDictionary(from array: [Int]) -> [Int: Int] {
    var dictionaryElements: [Int: Int] = [:]
    for number in array {
        if let counter = dictionaryElements[number] {
            dictionaryElements[number] = counter + 1
        } else {
            dictionaryElements[number] = 1
        }
    }
    return dictionaryElements
}

private func getUniqueValue(in dictionaryElements: [Int: Int]) -> Int {
    var uniqueNumber = 0
    for key in dictionaryElements.keys {
        if uniqueNumber == 0 {
            uniqueNumber = key
        } else {
            if let counter = dictionaryElements[key] {
                if counter < (dictionaryElements[uniqueNumber] ?? 0) {
                    uniqueNumber = key
                }
            }
        }
    }
    return uniqueNumber
}
