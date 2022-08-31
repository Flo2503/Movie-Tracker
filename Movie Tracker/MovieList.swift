//
//  MovieList.swift
//  Movie Tracker
//
//  Created by Florent on 30/08/2022.
//

import SwiftUI

struct MovieList: View {
    
    @ObservedObject var movieStorage = MovieStorage()
    
    var body: some View {
        NavigationView {
            List(movieStorage.movies) { currentMovie in
                NavigationLink(destination: MovieDetail(movie: currentMovie, movieStorage: movieStorage, newMovie: false)) {
                    Text(currentMovie.title)
                }
            }.navigationTitle("Movies").toolbar {
                ToolbarItemGroup {
                    NavigationLink(destination: MovieDetail(movie: Movie(), movieStorage: movieStorage, newMovie: true)) {
                        Image(systemName: "plus.circle")
                    }
                }
            }
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
