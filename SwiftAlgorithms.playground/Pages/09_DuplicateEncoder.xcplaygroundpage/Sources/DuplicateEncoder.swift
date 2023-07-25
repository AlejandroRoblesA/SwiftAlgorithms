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
