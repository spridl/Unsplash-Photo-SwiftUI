//
//  GroupView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 24.04.2023.
//

import SwiftUI

struct GroupView: View {
    let images = ImageModel.images
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal) {
                LazyHGrid(rows: [
                    GridItem(.flexible(minimum: 10, maximum: .infinity)),
                    GridItem(.flexible(minimum: 10, maximum: .infinity))
                ]) {
                    ForEach(images, id: \.self) { index in
                        Image(index)
                            .resizable()
                            .frame(width: geometry.size.width / 3, height: geometry.size.height * 0.48)
                            .cornerRadius(20)
//                        Rectangle()
//                            .frame(width: geometry.size.width / 3, height: geometry.size.height * 0.48)
//                            .foregroundColor(.blue)
//                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
