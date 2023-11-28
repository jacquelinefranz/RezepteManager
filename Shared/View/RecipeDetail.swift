//
//  RecipeDetail.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 28.11.23.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    
    var body: some View {
        Text(recipe.title)
            .font(.title)
    }
}

//#Preview {
//    RecipeDetail()
//}
