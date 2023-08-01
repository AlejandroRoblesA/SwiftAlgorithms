/*:
[<- Players Group Strenght](@previous)
# 13 - Descending Order
## Instrcutions:
 
 Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

 Examples:

 Input: 42145 Output: 54421

 Input: 145263 Output: 654321

 Input: 123456789 Output: 987654321
 
[-> Find Number By Sum](@next)
*/

print("Initial value: '42145', digits ordered: \(descendingOrder(of: 42145))")
print("Initial value: '145263', digits ordered: \(descendingOrder(of: 145263))")
print("Initial value: '9876543', digits ordered: \(descendingOrder(of: 90876543))")
print("Initial value: '123456789', digits ordered: \(descendingOrder(of: 123456789))")
print("Initial value: '0', digits ordered: \(descendingOrder(of: 0))")
print("\n Descending Order Using Sort")
print("Initial value: '42145', digits ordered: \(descendingOrderSort(of: 42145))")
print("Initial value: '145263', digits ordered: \(descendingOrderSort(of: 145263))")
print("Initial value: '9876543', digits ordered: \(descendingOrderSort(of: 90876543))")
print("Initial value: '123456789', digits ordered: \(descendingOrderSort(of: 123456789))")
print("Initial value: '0', digits ordered: \(descendingOrderSort(of: 0))")
