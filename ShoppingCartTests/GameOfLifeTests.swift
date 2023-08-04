import Foundation
import XCTest
@testable import ShoppingCart

func testGIVEN_cell_with_one_neighbour_is_at_grid_index1_1_WHEN_whowing_next_generation_THEN_cell_should_be_dead(){
    let grid = [
    ["☠️","☠️","☠️"],
    ["☠️","❤️","☠️"],
    ["☠️","☠️","☠️"]]
    
    //WHEN
    let nextGenerationGrid = grid.nextGeneration()
    
    //THEN
    XCTAssertEqual(nextGenerationGrid[1][1],"☠️")
}

