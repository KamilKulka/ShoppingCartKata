import Foundation
import XCTest
@testable import ShoppingCart

final class GameOfLifeTests: XCTestCase {

    // 1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation
    func testFirstRule() {
        // GIVEN only center cell alive
        let grid = [
            ["☠️","☠️","☠️"],
            ["☠️","❤️","☠️"],
            ["☠️","☠️","☠️"]]

        // WHEN showing next generation
        let nextGenerationGrid = grid.nextGeneration()

        // THEN center cell should be dead
        XCTAssertEqual(nextGenerationGrid[1][1],"☠️")
    }

    // 2. Any live cell with more than three live neighbours dies, as if by overcrowding
    func testSecondRule() {
        let grid = [
            ["❤️","❤️","❤️"],
            ["❤️","❤️","☠️"],
            ["☠️","☠️","☠️"]
        ]

        //WHEN
        let nextGenerationGrid = grid.nextGeneration()

        //THEN
        let expectedGrid = [
            ["❤️","☠️","❤️"],
            ["❤️","☠️","❤️"],
            ["☠️","☠️","☠️"]
        ]
        XCTAssertEqual(nextGenerationGrid, expectedGrid)
    }

    func testBlinker() {
        let grid = [
            ["☠️","☠️","☠️","☠️","☠️"],
            ["☠️","☠️","☠️","☠️","☠️"],
            ["☠️","❤️","❤️","❤️","☠️"],
            ["☠️","☠️","☠️","☠️","☠️"],
            ["☠️","☠️","☠️","☠️","☠️"]
        ]

        //WHEN
        var nextGenerationGrid = grid.nextGeneration()

        //THEN
        let expectedGrid = [
            ["☠️","☠️","☠️","☠️","☠️"],
            ["☠️","☠️","❤️","☠️","☠️"],
            ["☠️","☠️","❤️","☠️","☠️"],
            ["☠️","☠️","❤️","☠️","☠️"],
            ["☠️","☠️","☠️","☠️","☠️"]
        ]
        XCTAssertEqual(nextGenerationGrid, expectedGrid)

        //WHEN
        nextGenerationGrid = nextGenerationGrid.nextGeneration()

        //THEN
        XCTAssertEqual(grid, nextGenerationGrid)
    }
}
