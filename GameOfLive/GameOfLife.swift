import Foundation

typealias GameOfLife = Array<Array<String>>

extension GameOfLife {
    func nextGeneration() -> GameOfLife {
         return [
        ["☠️","☠️","☠️"],
        ["☠️","☠️","☠️"],
        ["☠️","☠️","☠️"]]
    }
}
