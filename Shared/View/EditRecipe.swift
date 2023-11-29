//
//  EditRecipe.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 29.11.23.
//

import SwiftUI
import SwiftData

struct EditRecipe: View {
    @Bindable var recipe: Recipe
    
    var body: some View {
        Form {
            TextField("Title", text: $recipe.title)
//            TextField("Summary", text: $recipe.summary)
        }
        .navigationTitle("New Recipe")
        
    }
}

#Preview {
    do {
        let container = try ModelContainer(
            for: Recipe.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        let example = Recipe(title: "")
        
        return NavigationStack {
            EditRecipe(recipe: example)
                .modelContainer(container)
        }
        
    } catch {
        fatalError("Preview Modelcontainer can not build")
    }
    
}
