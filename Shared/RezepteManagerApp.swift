//
//  RezepteManagerApp.swift
//  Shared
//
//  Created by Jacqueline Franz on 19.05.22.
//

import SwiftUI

@main
struct RezepteManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
