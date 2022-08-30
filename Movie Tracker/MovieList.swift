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
        NavigationView {
            List(movies) { currentMovie in
                NavigationLink(destination: MovieDetail(movie: currentMovie)) {
                    Text(currentMovie.title)
                }
            }.navigationTitle("Movies")
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
