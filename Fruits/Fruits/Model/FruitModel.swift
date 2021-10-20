//
//  FruitModel.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 20/10/2021.
//

import SwiftUI

// MARK: - FRUIT MODEL
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
