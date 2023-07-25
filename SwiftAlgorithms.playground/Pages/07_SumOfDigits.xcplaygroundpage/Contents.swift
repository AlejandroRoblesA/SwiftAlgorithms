/*:
[<- Fibonacci Sequence](@previous)
# 07 - Sum Of Digits
## Instrcutions:
Digital root is the recursive sum of all the digits in a number.

Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
 
Example:

16  -->  1 + 6 = 7

942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6

132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6

493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2
 
[Next](@next)
*/

print("La suma de los digitos: '5' es: \(digitalRoot(of: 5))")
print("La suma de los digitos: '16' es: \(digitalRoot(of: 16))")
print("La suma de los digitos: '942' es: \(digitalRoot(of: 942))")
print("La suma de los digitos: '132189' es: \(digitalRoot(of: 132189))")
print("La suma de los digitos: '493193' es: \(digitalRoot(of: 493193))")
print("\n⬇️⬇️⬇️ Using Maths ⬇️⬇️⬇️\n")
print("La suma de los digitos: '5' es: \(digitalMathRoot(of: 5))")
print("La suma de los digitos: '16' es: \(digitalMathRoot(of: 16))")
print("La suma de los digitos: '942' es: \(digitalMathRoot(of: 942))")
print("La suma de los digitos: '132189' es: \(digitalMathRoot(of: 132189))")
print("La suma de los digitos: '493193' es: \(digitalMathRoot(of: 493193))")
