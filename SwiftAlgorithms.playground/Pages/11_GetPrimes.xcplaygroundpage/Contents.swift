/*:
[<- Reduce Directions](@previous)
# 11 - Get Primes
## Instrcutions:
 
 A prime is a natural number greater than 1 that has no positive divisors other than 1 and itself.

 A more detailed description of prime numbers can be found at: http://en.wikipedia.org/wiki/Prime_number

 The Problem

 You will need to create logic for the following two functions: isPrime(number) and getPrimes(start, finish)

 isPrime(number)

 Should return boolean true if prime, otherwise false

 getPrimes(start, finish)

 Should return a unique, sorted array of all primes in the range [start, finish] (i.e. both numbers inclusive). Note that this range can go both ways - e.g. getPrimes(10, 1) should return all primes from 1 to 10 both inclusive.

 Sample Input:

 isPrime(number):

 isPrime(0); // === false
 
 isPrime(1); // === false
 
 isPrime(2); // === true
 
 isPrime(3); // === true
 
 isPrime(4); // === false
 
 isPrime(5); // === true
 
 getPrimes(start, finish):

 getPrimes(0, 0); // === []
 
 getPrimes(0, 30); // === [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
 
 getPrimes(30, 0); // === [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
 
[Next](@next)
*/

print("⬇️⬇️⬇️ Get Primes ⬇️⬇️⬇️")
print("The primes numbers from '0' to '0' are: \(getPrimes(from: 0, to: 0))")
print("The primes numbers from '1' to '0' are: \(getPrimes(from: 1, to: 0))")
print("The primes numbers from '1' to '1' are:  \(getPrimes(from: 1, to: 1))")
print("The primes numbers from '0' to '30' are: \(getPrimes(from: 0, to: 30))")
print("The primes numbers from '30' to '0' are: \(getPrimes(from: 30, to: 0))")

print("\n⬇️⬇️⬇️ Get Primes Using Recursion ⬇️⬇️⬇️")
print("The primes numbers from '0' to '0' are: \(getPrimesUsingRecursion(from: 0, to: 0))")
print("The primes numbers from '1' to '0' are: \(getPrimesUsingRecursion(from: 1, to: 0))")
print("The primes numbers from '1' to '1' are:  \(getPrimesUsingRecursion(from: 1, to: 1))")
print("The primes numbers from '0' to '30' are: \(getPrimesUsingRecursion(from: 0, to: 30))")
print("The primes numbers from '30' to '0' are: \(getPrimesUsingRecursion(from: 30, to: 0))")
