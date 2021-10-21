//
//  FruitRowView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 21/10/2021.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    // MARK: - BODY
    
    var body: some View {
        HStack(spacing: 8) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
               
            VStack(alignment: .leading, spacing: 6) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } //: VSTACK
        } //: HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}