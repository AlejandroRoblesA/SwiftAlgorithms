
func directionsReduce(arr: [String]) -> [String] {
    var directions: [String] = arr
    for index in 0..<directions.count where index < directions.count-1 {
        if directions[index].count == directions[index+1].count && directions[index] != directions[index+1] {
            directions.remove(at: index)
            directions.remove(at: index)
            return directionsReduce(arr: directions)
        }
    }
    return directions
}

//print(directionsReduce(arr: ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]))
print(directionsReduce(arr: ["EAST", "EAST", "WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"]))
      //["EAST", "NORTH"])
