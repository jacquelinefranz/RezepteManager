//
//  RecipeDetail.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 28.11.23.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    @State private var isShowingPopover = false
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack {
            Text(recipe.title)
                        .font(.title)
        }
        .toolbar {
            Button("Edit", systemImage: "ellipsis.circle", action: { isShowingPopover.toggle()})
        }
        .popover(isPresented: $isShowingPopover){
            Button(action: { isSheetPresented.toggle()}){
                Label("Edit", systemImage: "pencil")
            }
        }
        .sheet(isPresented: $isSheetPresented){
            EditRecipe(recipe: recipe)
        }
    }
}

//#Preview {
//    RecipeDetail()
//}
