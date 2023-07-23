import Foundation

public var countries: [String] = ["🇲🇽", "🇺🇸", "🇪🇸", "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "🇫🇷", "🇲🇽", "🇯🇵", "🇮🇸", "🇧🇷"]
public var numbers: [String] = ["1", "11", "10", "100", "0", "1", "10", "50", "0", "1"]
public var names: [String] = ["Diana", "Paty", "Jessie", "Ale", "Laura", "Lety", "Karla", "Lety"]

public func mostCommonElement(in array: [String]) -> String {
    
    var nameCountDictionary = [String: Int]()
    
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }
    
    var mostCommonElement = ""
    
    for key in nameCountDictionary.keys {
        if mostCommonElement == "" {
            mostCommonElement = key
        } else {
            guard let count = nameCountDictionary[key] else { return String() }
            if count > nameCountDictionary[mostCommonElement]! {
                mostCommonElement = key
            }
        }
    }
    return mostCommonElement
}
