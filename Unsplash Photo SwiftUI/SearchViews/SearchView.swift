//
//  SearchView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 25.04.2023.
//

import SwiftUI

struct SearchView: View {
    @State var search = ""
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
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
                                .foregroundColor(.yellow)
                        }
                    }
                    .padding()
                }
            }
            .searchable(text: $search)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
