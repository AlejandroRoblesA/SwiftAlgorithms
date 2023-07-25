import Foundation

public func removeVowels(from sentence: String) {
    print("The original: \(sentence)\nSentence without vowels: \(sentence.stringByRemovingVowel())\n")
}

public func disemVowelsReplacingOccurrences(sentence: String) {
    let sentenceWithoutVowels = sentence.replacingOccurrences(of: "[aeiou]",
                                                              with: "",
                                                              options: [.regularExpression, .caseInsensitive])
    print("The original: \(sentence)\nSentence without vowels: \(sentenceWithoutVowels)\n")
}
