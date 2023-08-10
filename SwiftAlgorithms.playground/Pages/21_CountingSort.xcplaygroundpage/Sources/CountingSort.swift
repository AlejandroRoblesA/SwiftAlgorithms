import Foundation

public func countingSort(arr: [Int]) -> [Int] {
    var timesValueAppear: [Int] = [Int]()
    var dictionary: [Int:Int] = [Int:Int]()
    for key in arr {
        if let count = dictionary[key] {
            dictionary[key] = count + 1
        } else {
            dictionary[key] = 1
        }
    }
    
    for index in 0..<100 {
        timesValueAppear.append(0)
        for key in dictionary.keys {
            if index == key {
                timesValueAppear[index] = dictionary[key] ?? 0
                break
            }
        }
    }
    return timesValueAppear
}
