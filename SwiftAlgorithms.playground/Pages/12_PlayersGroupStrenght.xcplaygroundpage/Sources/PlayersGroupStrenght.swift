import Foundation

public func maxStrengthGroup(id player: Int) -> Int {
    var groupPlayers: Set<Int> = [player]
    groupPlayers = addNewPlayerToGroup(id: player, group: groupPlayers)
    guard let leaderPlayer: Int = groupPlayers.max() else { return 0 }
    return leaderPlayer * groupPlayers.count
}

private func newPlayerId(lastPlayerId: Int) -> Int {
    let idPlayerInDigits: [Int] = lastPlayerId.transformNumberInArrayOfDigits()
    return idPlayerInDigits.factorialSumDigits()
}

private func addNewPlayerToGroup(id player: Int, group: Set<Int>) -> Set<Int> {
    var groupPlayers: Set<Int> = group
    let newPlayerId: Int = newPlayerId(lastPlayerId: player)
    if isNewPlayer(in: groupPlayers, playerId: newPlayerId) {
        groupPlayers.insert(newPlayerId)
        return addNewPlayerToGroup(id: newPlayerId, group: groupPlayers)
    }
    return groupPlayers
}

private func isNewPlayer(in group: Set<Int>, playerId: Int) -> Bool {
    return !group.contains(playerId)
}
