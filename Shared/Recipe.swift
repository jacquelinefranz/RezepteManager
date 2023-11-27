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
    
    init(title: String) {
        self.title = title
    }
}
