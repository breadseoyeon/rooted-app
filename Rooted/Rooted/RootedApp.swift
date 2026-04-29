//
//  RootedApp.swift
//  Rooted
//
//  Created by 박서연 on 4/29/26.
//

import SwiftUI

@main
struct RootedApp: App {
    @State private var showSplash = true

    var body: some Scene {
        WindowGroup {
            ZStack {
                if showSplash {
                    SplashView()
                        .onAppear {
                            // 2초 뒤 홈 화면으로 전환
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    showSplash = false
                                }
                            }
                        }
                } else {
                    ContentView() // 혹은 HomeDashboardView()
                }
            }
        }
    }
}
