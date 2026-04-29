//
//  SplashView.swift
//  Rooted
//
//  Created by 박서연 on 4/29/26.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        RootedBackground {
            VStack(spacing: 20) {
                ZStack {
                    Image("splash_pot_character")
                    Image("splash_leaf_group")
                        .offset(y: -80)
                    Image("splash_dog")
                        .offset(x: 60, y: -30)
                    Image("splash_cat")
                        .offset(x: -70, y: 40)
                }
                .frame(height: 200)

                Image("splash_brand_text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)

                Image("splash_tagline")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
            }
            .padding()
        }
    }
}
