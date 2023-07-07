//
//  ProductCalculator.swift
//  ShoppingCart
//
//  Created by Kamil Kulka on 07/07/2023.
//

import Foundation

final class PriceCalculator {

    static func pricePerUnit(for product: Product) -> Double {
        return increasedCost(product.cost, by: product.revenue)
    }

    static func finalPrice(for product: Product) -> Double {
        let pricePerUnit = pricePerUnit(for: product)
        return increasedCost(pricePerUnit, by: product.tax)
    }

    static private func increasedCost(
        _ cost: Double,
        by percent: Double,
        roundingRule: FloatingPointRoundingRule = .up
    ) -> Double {
        var price = cost * (1.0 + percent)
        let roundedPrice = (price * 100).rounded(roundingRule) / 100
        return roundedPrice
    }
}
