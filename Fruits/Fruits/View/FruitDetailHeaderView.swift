//
//  FruitDetailHeaderView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 21/10/2021.
//

import SwiftUI

struct FruitDetailHeaderView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    @State private var isAnimation: Bool = true
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimation ? 0.6 : 1)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeInOut(duration: 0.6)) {
                isAnimation = false
            }
        }
    }
}

struct FruitDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailHeaderView(fruit: fruitsData[1]).previewLayout(.fixed(width: 375, height: 440))
    }
}
