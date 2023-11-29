//
//  RezepteManagerApp.swift
//  Shared
//
//  Created by Jacqueline Franz on 19.05.22.
//

import SwiftUI
import SwiftData

@main
struct RezepteManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Recipe.self)
        }
    }
}
