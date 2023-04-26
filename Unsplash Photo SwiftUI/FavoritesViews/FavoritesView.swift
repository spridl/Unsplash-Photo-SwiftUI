//
//  FavoritesView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 25.04.2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible(minimum: 10, maximum: .infinity)),
                    GridItem(.flexible(minimum: 10, maximum: .infinity)),
                    GridItem(.flexible(minimum: 10, maximum: .infinity)),
                    GridItem(.flexible(minimum: 10, maximum: .infinity)),
                    GridItem(.flexible(minimum: 10, maximum: .infinity)),
                ]) {
                    ForEach(0..<6) { index in
                        Rectangle()
                            .frame(width: geometry.size.width / 6, height: geometry.size.width / 6)
                            .foregroundColor(.pink)
                    }
                }
                .padding()
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
