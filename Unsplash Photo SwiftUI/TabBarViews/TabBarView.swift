//
//  TabBarView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 25.04.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NavView()
                .tabItem {
                    Label("Groups", systemImage: "list.bullet")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
