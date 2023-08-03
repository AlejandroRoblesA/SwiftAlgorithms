/*:
[<- Find Number By Sum](@previous)
# 15 - Persistent Bugger
## Instrcutions:
 
 Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

 For example (Input --> Output):

 39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
 
 999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
 
 4 --> 0 (because 4 is already a one-digit number)
 
[Next](@next)
*/

print("The number '4' you can multiply it's result until arrive to just one digit \(persistence(for: 4)) times")
print("The number '10' you can multiply it's result until arrive to just one digit \(persistence(for: 10)) times")
print("The number '25' you can multiply it's result until arrive to just one digit \(persistence(for: 25)) times")
print("The number '39' you can multiply it's result until arrive to just one digit \(persistence(for: 39)) times")
print("The number '999' you can multiply it's result until arrive to just one digit \(persistence(for: 999)) times")

print("\nPersistent Bugger Using CompactMap")
print("The number '4' you can multiply it's result until arrive to just one digit \(persistenceCompactMap(for: 4)) times")
print("The number '10' you can multiply it's result until arrive to just one digit \(persistenceCompactMap(for: 10)) times")
print("The number '25' you can multiply it's result until arrive to just one digit \(persistenceCompactMap(for: 25)) times")
print("The number '39' you can multiply it's result until arrive to just one digit \(persistenceCompactMap(for: 39)) times")
print("The number '999' you can multiply it's result until arrive to just one digit \(persistenceCompactMap(for: 999)) times")
