//
//  Recipe.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 27.11.23.
//

import SwiftData

@Model
class Recipe {
    var title: String
    var headerImage: String?
    var isFavorite: Bool
    var author: String?
//    var cookingTime: ...
//    var difficultyLevel: Enum
    var calories: Int?
    var summary: String?
//    var incredients [...]
    var portions: Int?
//    var preparationSteps: [...]
//    var nutritionalValues: [...]
    
    //MARK: - Init Methods
    init(
        title: String = "Untitled",
        isFavorite: Bool = false
    ){
        self.title = title
        self.isFavorite = isFavorite
    }
    
    init(
        title: String = "Untitled",
        headerImage: String,
        isFavorite: Bool = false,
        author: String,
        calories: Int,
        summary: String,
        portions: Int
    ) {
        self.title = title
        self.headerImage = headerImage
        self.isFavorite = isFavorite
        self.author = author
        self.calories = calories
        self.summary = summary
        self.portions = portions
    }	
}
