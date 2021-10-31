//
//  FruitNutientsView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 21/10/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 8)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .font(Font.system(.body).bold())
                        .foregroundColor(fruit.gradientColors[1])
                        Spacer(minLength: 24)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//: HSTACK
                }
            } //: DISCLOSURE
        } //: BOX
    }
}

struct FruitNutientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
