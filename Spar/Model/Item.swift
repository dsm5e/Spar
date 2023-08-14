//
//  Item.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import Foundation

struct Item: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let price: Double
    let promotion: Promotion
    let priceDrop: Bool
}

enum Promotion: String, CaseIterable {
    case none = ""
    case superPrice = "Супер Цена"
    case hitPrice = "Удар по ценам"
}
