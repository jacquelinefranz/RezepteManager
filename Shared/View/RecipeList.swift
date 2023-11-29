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
    @Binding var path: [Recipe]
    @State private var isCreatingNewRecipe = false
    @State private var lastCreatedRecipe: Recipe?
    
    
    
    //MARK: - Body
    var body: some View {
        List {
            ForEach(recipes) { recipe in
                NavigationLink(value: recipe) {
                    Row(recipe: recipe)
                }
            }
        }
        .navigationTitle("Recipes")
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: Recipe.self) { recipe in
            if isCreatingNewRecipe && recipe == lastCreatedRecipe {
                EditRecipe(recipe: recipe)
            } else {
                RecipeDetail(recipe: recipe)
            }
        }
        .onChange(of: path) {
                    if path.last != lastCreatedRecipe {
                        isCreatingNewRecipe = false
                    }
                }
        // MARK: -- Toolbar
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Settings", systemImage: "ellipsis.circle") {
                    // Popover für Einstellungen & Filter der Liste einbringen
                }
            }
            ToolbarItem {
                Button("New Recipe", systemImage: "note.text.badge.plus", action: addNewRecipe )
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
        let newRecipe = Recipe(title: "")
        modelContext.insert(newRecipe)
        lastCreatedRecipe = newRecipe
        path = [newRecipe]
        isCreatingNewRecipe = true
    }
}

#Preview {
    NavigationStack{
        RecipeList(path: Binding.constant([Recipe]()))
    }
}
