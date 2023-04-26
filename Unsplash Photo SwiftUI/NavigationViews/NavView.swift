//
//  NavigationView.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 25.04.2023.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        NavigationView {
            GroupsView()
                .navigationTitle("Groups")
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
