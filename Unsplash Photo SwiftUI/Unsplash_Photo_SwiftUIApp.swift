//
//  Unsplash_Photo_SwiftUIApp.swift
//  Unsplash Photo SwiftUI
//
//  Created by Тимур on 10.04.2023.
//

import SwiftUI

@main
struct Unsplash_Photo_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
