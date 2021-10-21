//
//  ContentView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 19/10/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 5)
                }
            } //: LIST
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(fruits: fruitsData)
        }
    }
}
