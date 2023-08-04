//
//  Product.swift
//  ShoppingCart
//
//  Created by Serhii Kostanian on 07.07.2023.
//

import Foundation

let product = [
    Product(name: "Iceberg", icon: "🥬", cost: 1.55, revenue: 0.15, tax: 0.21),
    Product(name: "Tomato", icon: "🍅", cost: 0.52, revenue: 0.15, tax: 0.21),
    Product(name: "Chicken", icon: "🍗", cost: 1.34, revenue: 0.12, tax: 0.21),
    Product(name: "Bread", icon: "🍞", cost: 0.71, revenue: 0.12, tax: 0.1),
    Product(name: "Corn", icon: "🌽", cost: 1.21, revenue: 0.12, tax: 0.1)
]

struct Product {
    let name: String
    let icon: String
    let cost: Double
    let revenue: Double
    let tax: Double
}
