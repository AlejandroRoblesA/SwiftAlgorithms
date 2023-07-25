import Foundation

public let sentence = "This website is for losers LOL!"
public let information = "My name is Alejandro, I'm an iOS developer since 2018"
public let hobbies = "Something that I really like is to play soccer and play chess"

public func removeVowels(from sentence: String) {
    print("The original: \(sentence)\nSentence without vowels: \(sentence.stringByRemovingVowel())\n")
}

public func disemVowelsReplacingOccurrences(sentence: String) {
    let sentenceWithoutVowels = sentence.replacingOccurrences(of: "[aeiou]",
                                                              with: "",
                                                              options: [.regularExpression, .caseInsensitive])
    print("The original: \(sentence)\nSentence without vowels: \(sentenceWithoutVowels)\n")
}

public func disemVowelsFilter(sentence: String) {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    let sentenceWithoutVowels = String(sentence.filter { !vowels.contains($0) })
    print("The original: \(sentence)\nSentence without vowels: \(sentenceWithoutVowels)\n")
}
