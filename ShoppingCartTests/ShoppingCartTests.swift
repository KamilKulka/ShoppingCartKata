//
//  ShoppingCartTests.swift
//  ShoppingCartTests
//
//  Created by Kamil Kulka on 07/07/2023.
//

import XCTest
@testable import ShoppingCart

final class ShoppingCartTests: XCTestCase {
    func testProductPricePerUnit() throws {
        let cost = 1.55
        let revenue = 0.15
        let pricePerUnit = ProductCalculator.pricePerUnit(cost: cost, revenue: revenue)
        XCTAssertEqual(pricePerUnit, 1.79)
    }
}
