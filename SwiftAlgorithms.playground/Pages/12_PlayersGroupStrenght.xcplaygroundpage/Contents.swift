/*:
[<- Get Primes](@previous)
# 12 - Players Group Strenght
## Instrcutions:
 Two countries "I" and "P" wish to compete in a sports game. The country "I" wants to train the players in groups in order to maximize the strength of the group. Each player has a unique id starting from 1, 2, 3... and so on. A group starts with one player and continues to grow. Initially the group contains a player with id x. This player can call the player with id 'y' to join the group if the sum of the factorial of the digits of 'x' is equal to 'y'. Now the player with id 'y' calls the player with id 'z' to join the group if the sum of the factorial of the digits of 'y' is equal to 'z' and this continues to increase the group size.
 
 For example, the player with id 23 can call the player with id 8 to join the group since 8 = 2! + 3!. Where x! denotes factorial of x, i.e.
 x! = 1 * 2 * 3 * ... x.
 
 The leader of the group is the player with a maximum id number. The strength of the group will be the id of leader multiplied by the number of players in the group. For example, if the group is {4, 24, 26, 722, 5044, 169, 363601, 1454} then its strength will be
 363601 * 8 = 2908808.
 
 Given an integer n find the maximum strength of the group which starts with the player with id n.
 
 Function Description:
 
 Complete the function maxStrength. maxStrength returns an integer, the maximum strength of the group.
 maxStrength has the following parameter:
 n: an integer
 
 • Constraints:
 
 1 <=n <=10^6
 
 • Input Format For Custom Testing
 
 The only line contains an integer, n, the id of the player.
 
 • Sample Case 0
 
 Sample Input For Custom Testing: 5
 
 Sample Output: 3636010
 
 • Explanation:
 
 The group will contain the players with ids {5, 120, 4, 24, 26, 722, 5044, 169, 363601, 1454}. Hence the strength will be 363601
 -> 10 = 3636010.
 
 • Sample Case 1
 
 Sample Input For Custom Testing: 540
 
 Sample Output: 1080
 
 • Explanation:
 
 The group will contain the players with ids {540, 145}. Hence the strength will be 540
 *2= 1080.
 
[Next](@next)
*/


/// Taks:
/// Divide de number in digits
/// get the factorial of each digit
/// sum the digits
/// Add the new number if it is not in the array, if it is in the array stop to adding numbers -> It could be a set insted of array ...
/// search for the max number "functionApple ma([])"
/// multiply the max number for the nubers of elements in the arrat/set
/// return the multiplication

func maxStrengthGroup(id player: Int) -> Int {
    return 0
}

func getDigit(number: Int) -> [Int] {
    guard number.description.count >= 2 else { return [number] }
    var numberInDigits = [Int]()
    for digit in number.description {
        numberInDigits.append(Int(String(digit)) ?? 0)
    }
    return numberInDigits
}

getDigit(number: 1)
getDigit(number: 9)
getDigit(number: 99)
getDigit(number: 0)
getDigit(number: 100)
getDigit(number: 2)
