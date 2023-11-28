//
//  RecipeList.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 28.11.23.
//

import SwiftUI
import SwiftData

struct RecipeList: View {
    //MARK: - View Propertys
    @Environment(\.modelContext) private var modelContext
    @Query private var recipes: [Recipe]
    //Edit Sheet ispresentet
    //noch ein Sheet für Erstellen einbringen
    
    //MARK: - Body
    var body: some View {
        List {
            ForEach(recipes) { recipe in
                NavigationLink(destination: RecipeDetail(recipe: recipe)) {
                    Row(recipe: recipe)
                }
            }
        }
        .navigationTitle("Recipes")
        .navigationBarTitleDisplayMode(.inline)
        // MARK: -- Toolbar
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Settings", systemImage: "ellipsis.circle") {
                    // Popover für Einstellungen & Filter der Liste einbringen
                }
            }
            ToolbarItem {
                Button("New Recipe", systemImage: "note.text.badge.plus") { addNewRecipe() }
            }
        }
    } // END: Body
    
    // MARK: - View Components
    private func Row (recipe: Recipe) -> some View {
        HStack{
            Text(recipe.title)
            Spacer()
            if recipe.isFavorite {
                Image(systemName: "star.fill")
            }
        }
    }
    
    
    // MARK: - View Methods
    func addNewRecipe (){
        modelContext.insert(Recipe(title: "Untitled", isFavorite: false))
    }
}

#Preview {
    NavigationStack{
        RecipeList()
    }
}
