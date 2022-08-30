//
//  Movie.swift
//  Movie Tracker
//
//  Created by Florent on 30/08/2022.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID() 
    var title = ""
    var rating = 3.0
    var seen = false
    
}
