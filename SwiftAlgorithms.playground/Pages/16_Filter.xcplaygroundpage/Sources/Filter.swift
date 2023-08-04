import Foundation

public let array1 = [1,2,3,4,3,3]
public let array2 = [-2,-1,0,1,2,3,4,5,0,10]
public let array3 = [10,100,1_000, 10_000]
public let array4 = [0,1,2,3,4,5,6,7,8,9]
public let emptyArray = [Int]()

public func searchThe(element: Int, in array:[Int]) -> [Int] {
    var filteredArray = [Int]()
    for number in array {
        if number == element {
            filteredArray.append(number)
        }
    }
    return filteredArray
}

