//
//  Home.swift
//  RezepteManager
//
//  Created by Jacqueline Franz on 20.07.22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationLink(destination: RecipeView()) {
            Text("See all recipies")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
