//
//  RootedBackground.swift
//  Rooted
//
//  Created by 박서연 on 4/29/26.
//

import SwiftUI

struct RootedBackground<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        LinearGradient(
            colors: [Color("CreamBackground"), Color("SoftGreen").opacity(0.4)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
        .overlay(content)
    }
}
