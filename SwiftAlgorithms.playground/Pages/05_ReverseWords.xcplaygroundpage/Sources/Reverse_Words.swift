import Foundation

public let numbers = "0123 4567 89"
public let helloWord = "Hello Word!"
public let sentence = "Lets start today by completing a very interesting challenge"

public func reverseWords(in sentence: String) -> String {
    let allWords: [String] = sentence.components(separatedBy: " ")
    var newSentence: String = ""
    for index in 0...allWords.count - 1 {
        let word: String = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        let reverseWord: String = String(word.reversed())
        newSentence += reverseWord
    }
    return newSentence
}
