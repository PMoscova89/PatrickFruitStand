//
//  PatrickFruitStandApp.swift
//  PatrickFruitStand
//
//  Created by Patrick Moscova on 12/9/25.
//

import SwiftUI
import CoreData

@main
struct PatrickFruitStandApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
