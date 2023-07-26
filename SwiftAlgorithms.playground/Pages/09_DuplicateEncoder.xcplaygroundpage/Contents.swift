/*:
[<- Remove Vowels](@previous)
# 09 - Duplicate Encoder
## Instrcutions:
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Example:

 "din"      -->  "((("
 
 "recede"   -->  "()()()"
 
 "Success"  -->  ")())())"
 
 "(( @"     -->  "))(("

[-> Reduce Directions](@next)
*/
print("⬇️⬇️⬇️ Encode Using Dictionary ⬇️⬇️⬇️")
duplicateEncoder(word: "din")
duplicateEncoder(word: "recede")
duplicateEncoder(word: "Success")
duplicateEncoder(word: "(( @")
duplicateEncoder(word: " @gmail.com ")

print("⬇️⬇️⬇️ Encode Using Map ⬇️⬇️⬇️")
duplicateEncodeUsingMap(word: "din")
duplicateEncodeUsingMap(word: "recede")
duplicateEncodeUsingMap(word: "Success")
duplicateEncodeUsingMap(word: "(( @")
duplicateEncodeUsingMap(word: " @gmail.com ")

print("⬇️⬇️⬇️ Encode Filter ⬇️⬇️⬇️")
duplicateEncodeFilter(word: "din")
duplicateEncodeFilter(word: "recede")
duplicateEncodeFilter(word: "Success")
duplicateEncodeFilter(word: "(( @")
duplicateEncodeFilter(word: " @gmail.com ")
