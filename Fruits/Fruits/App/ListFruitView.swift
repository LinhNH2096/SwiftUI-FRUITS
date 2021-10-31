//
//  ContentView.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 19/10/2021.
//

import SwiftUI

struct ListFruitView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 5)
                    }
                }
            } //: LIST
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings) {
                        SettingView()
                    }
            )
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListFruitView(fruits: fruitsData)
        }
    }
}
