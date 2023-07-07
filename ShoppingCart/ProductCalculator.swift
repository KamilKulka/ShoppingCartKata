//
//  ProductCalculator.swift
//  ShoppingCart
//
//  Created by Kamil Kulka on 07/07/2023.
//

import Foundation

final class ProductCalculator{
    static func pricePerUnit(cost: Double, revenue: Double) -> Double {
        var price = cost * (revenue + 1.0)
        let roundedPrice = (price * 100).rounded(.up)/100
        return roundedPrice
    }
}
