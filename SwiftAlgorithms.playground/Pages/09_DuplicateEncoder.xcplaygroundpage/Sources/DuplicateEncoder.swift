import Foundation

public func duplicateEncoder(word: String) {
    var dictionary = [Character: Int]()
    for character in word.lowercased() {
        if let count = dictionary[character] {
            dictionary[character] = count + 1
        } else {
            dictionary[character] = 1
        }
    }
    var encodeWord = ""
    for character in word {
        if dictionary[character] == 1 {
            encodeWord = encodeWord + "("
        } else {
            encodeWord = encodeWord + ")"
        }
    }
    print("Word: \(word)\nEncode Word: \(encodeWord)\n")
}

public func duplicateEncodeUsingMap(word: String) {
    var dictionary = [Character: Int]()
    var word = word.lowercased()
    for letter in word {
        dictionary[letter, default: 0] += 1
    }
    word = word.map { dictionary[$0]! > 1 ? ")" : "(" }.joined()
    print("Word: \(word)\nEncode Word: \(word)\n")
}
