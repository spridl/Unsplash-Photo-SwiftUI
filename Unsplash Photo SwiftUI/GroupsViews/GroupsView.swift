//
//  GroupsView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 10.04.2023.
//

import SwiftUI

struct GroupsView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView() {
                LazyVGrid(columns: [GridItem(.flexible(minimum: 10, maximum: .infinity))]) {
                        ForEach(0..<6) { index in
                            HStack {
                                NavigationLink(
                                    "Index \(index)",
                                    destination: CategoryView())
                                .padding(.leading)
                                Spacer()
                            }
                            GroupView()
                                .frame(width: geometry.size.width * 0.9 , height: geometry.size.height / 3)
                        }
                }
                .padding()
                
            }
        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
