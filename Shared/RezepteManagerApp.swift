//
//  RezepteManagerApp.swift
//  Shared
//
//  Created by Jacqueline Franz on 19.05.22.
//

import SwiftUI
let appName = "Rezepte Manager"

@main
struct RezepteManagerApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            
            NavigationView {
                Sidebar()
                Home()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
