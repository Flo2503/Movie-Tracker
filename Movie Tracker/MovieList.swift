//
//  MovieList.swift
//  Movie Tracker
//
//  Created by Florent on 30/08/2022.
//

import SwiftUI

struct MovieList: View {
    
    var movies = [Movie(), Movie(), Movie()]
    
    var body: some View {
        List(movies) { movie in
            Text(movie.title)
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
