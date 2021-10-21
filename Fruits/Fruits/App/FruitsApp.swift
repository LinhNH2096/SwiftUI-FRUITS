//
//  FruitsApp.swift
//  Fruits
//
//  Created by Nguyễn Hồng Lĩnh on 19/10/2021.
//

import SwiftUI

@main
struct FruitsApp: App {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
