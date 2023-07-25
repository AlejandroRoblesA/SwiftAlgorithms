import Foundation

extension String {
    public func stringByRemovingVowel() -> String {
        var newWord = self
        for vowel in ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}
