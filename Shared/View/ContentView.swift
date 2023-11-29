//
//  ContentView.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 27.11.23.
//

import SwiftUI

struct ContentView: View {
    @State private var path = [Recipe]()
    
    var body: some View {
        NavigationStack(path: $path){
            RecipeList(path: $path)
        }
        .navigationTitle("Recipes")
    }
}

#Preview {
    ContentView()
}
