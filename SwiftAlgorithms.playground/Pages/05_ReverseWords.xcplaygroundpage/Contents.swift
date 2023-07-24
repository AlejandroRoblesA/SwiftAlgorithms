/*:
[<- Most Common Element In Array](@previous)
# 05 - Reverse Words
## Instrcutions:
1. Write a function that recieve a sentence and invert every single word
2. Write a faction that delete the vowels of every single word of the sentence
 
[-> Fibonacci Sequence](@next)
*/

print("Original sentence: \(numbers)\nReverse  sentence: \(reverseWords(in: numbers))\n")
print("Original sentence: \(helloWord)\nReverse  sentence: \(reverseWords(in: helloWord))\n")
print("Original sentence: \(sentence)\nReverse  sentence: \(reverseWords(in: sentence))\n")

print("\n⬇️⬇️⬇️Reverse Words And Remove Vowel⬇️⬇️⬇️\n")

print("Original sentence: \(numbers)\nReverse sentence without vowels: \(reverseWords(in: numbers).stringByRemovingVowel())\n")
print("Original sentence: \(helloWord)\nReverse sentence without vowels: \(reverseWords(in: helloWord).stringByRemovingVowel())\n")
print("Original sentence: \(sentence)\nReverse sentence without vowels: \(reverseWords(in: sentence).stringByRemovingVowel())\n")
