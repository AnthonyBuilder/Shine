//
//  ShineApp.swift
//  Shine
//
//  Created by Anthony on 24/08/21.
//

import SwiftUI

@main
struct ShineApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
