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

public func reduceDirectionsFrom(_ array: [String]) -> [String] {
    var newDirections = [String]()
    for direction in array {
        if let lastDirection = newDirections.last, !newDirections.isEmpty && canReduce(currentDirection: direction, lastDirection: lastDirection) {
            newDirections.removeLast()
        } else {
            newDirections.append(direction)
        }
    }
    return newDirections
}

private func canReduce(currentDirection: String, lastDirection: String) -> Bool {
    switch (currentDirection, lastDirection) {
        case ("NORTH", "SOUTH") : return true
        case ("SOUTH", "NORTH") : return true
        case ("WEST", "EAST") : return true
        case ("EAST", "WEST") : return true
        default: return false
    }
}
