import Foundation

typealias GameOfLife = Array<Array<String>>

extension GameOfLife {

    func nextGeneration() -> GameOfLife {
        var nextGeneration = self

        for row in 0..<self.count {
            for col in 0..<self[row].count {
                var aliveNeighboursCount = 0

                // --- First row
                if isNeighbourAlive(i: row - 1, j: col - 1) {
                    aliveNeighboursCount += 1
                }
                if isNeighbourAlive(i: row, j: col - 1) {
                    aliveNeighboursCount += 1
                }
                if isNeighbourAlive(i: row + 1, j: col - 1) {
                    aliveNeighboursCount += 1
                }

                // --- Second row
                if isNeighbourAlive(i: row - 1, j: col) {
                    aliveNeighboursCount += 1
                }
                if isNeighbourAlive(i: row + 1, j: col) {
                    aliveNeighboursCount += 1
                }

                // --- Third row
                if isNeighbourAlive(i: row - 1, j: col + 1) {
                    aliveNeighboursCount += 1
                }
                if isNeighbourAlive(i: row, j: col + 1) {
                    aliveNeighboursCount += 1
                }
                if isNeighbourAlive(i: row + 1, j: col + 1) {
                    aliveNeighboursCount += 1
                }

                let isCurrentCellAlive = self[row][col] == "❤️"

                switch (isCurrentCellAlive, aliveNeighboursCount) {
                case (true, 2), (true, 3): // #3
                    nextGeneration[row][col] = "❤️"
                case (false, 3): // #4
                    nextGeneration[row][col] = "❤️"
                default:
                    nextGeneration[row][col] = "☠️"
                }
            }
        }

        return nextGeneration
    }

    private func isNeighbourAlive(i: Int, j: Int) -> Bool {
        return i >= 0 &&
            j >= 0 &&
            i < self.count &&
            j < self[0].count &&
           self[i][j] == "❤️"
    }
}
