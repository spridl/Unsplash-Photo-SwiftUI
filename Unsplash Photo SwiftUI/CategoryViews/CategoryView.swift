//
//  CategoryView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 25.04.2023.
//

import SwiftUI

struct CategoryView: View {
    let images = ImageModel.images
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
                    ForEach(images, id: \.self) { index in
                        Image(index)
                            .resizable()
                            .frame(width: geometry.size.width / 6, height: geometry.size.width / 6)
                            .cornerRadius(10)
//                        Rectangle()
//                            .frame(width: geometry.size.width / 6, height: geometry.size.width / 6)
//                            .foregroundColor(.gray)
                    }
                }
                .padding()
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
