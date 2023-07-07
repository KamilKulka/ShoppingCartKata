//
//  ProductCalculator.swift
//  ShoppingCart
//
//  Created by Kamil Kulka on 07/07/2023.
//

import Foundation

final class PriceCalculator {
    static func pricePerUnit(for product: Product) -> Double {
        var price = product.cost * (product.revenue + 1.0)
        let roundedPrice = (price * 100).rounded(.up)/100
        return roundedPrice
    }
}
