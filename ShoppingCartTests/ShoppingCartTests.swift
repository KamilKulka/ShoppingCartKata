//
//  ShoppingCartTests.swift
//  ShoppingCartTests
//
//  Created by Kamil Kulka on 07/07/2023.
//

import XCTest
@testable import ShoppingCart

final class ShoppingCartTests: XCTestCase {
    private let product = Product(name: "Iceberg", icon: "🥬", cost: 1.55, revenue: 0.15, tax: 0.21)

    func testProductPricePerUnit() throws {
        let pricePerUnit = PriceCalculator.pricePerUnit(for: product)
        XCTAssertEqual(pricePerUnit, 1.79)
    }
}
