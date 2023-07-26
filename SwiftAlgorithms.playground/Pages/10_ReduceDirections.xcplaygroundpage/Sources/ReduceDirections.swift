import Foundation

public let nssewnw = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
public let nsew = ["NORTH", "SOUTH", "EAST", "WEST"]
public let newsww = ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"]
public let eewnweesnw = ["EAST", "EAST", "WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"]
public let nwse = ["NORTH", "WEST", "SOUTH", "EAST"]

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

public func reduceDirectionsArray(_ array: [String]) -> [String] {
    return array.reduce(into: [String]()) { (result, element) in
        if let last = result.last, [("NORTH", "SOUTH"), ("EAST", "WEST")].contains(where: { $0 == (last, element) || $0 == (element, last) }) {
            result.removeLast()
        } else {
            result.append(element)
        }
    }
}
