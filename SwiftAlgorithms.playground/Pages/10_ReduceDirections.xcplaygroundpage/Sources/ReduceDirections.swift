import Foundation

public func reduceDirections(from array: [String]) -> [String] {
    var directions: [String] = array
    for index in 0..<directions.count where index < directions.count-1 {
        if directions[index].count == directions[index+1].count && directions[index] != directions[index+1] {
            directions.remove(at: index)
            directions.remove(at: index)
            return reduceDirections(from: directions)
        }
    }
    return directions
}
