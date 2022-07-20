//
//  Sidebar.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 20.07.22.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        List{
            NavigationLink(destination: Home()) {Text("Home")}
            NavigationLink(destination: RecipeView()) {Text("Rezepte")}
        }
        .listStyle(.sidebar)
        .navigationTitle(appName)
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
