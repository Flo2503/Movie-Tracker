//
//  MovieDetail.swift
//  Movie Tracker
//
//  Created by Florent on 23/08/2022.
//

import SwiftUI

struct MovieDetail: View {
    
    @State var movie: Movie

    
    var body: some View {
        List {
            Section{
                SectionTitle(title: "Title")
                TextField("Movie title", text: $movie.title)
            }
            Section{
                SectionTitle(title: "Rating")
                HStack() {
                    Spacer()
                    Text(String(repeating: "★", count: Int(movie.rating))).foregroundColor(.yellow).font(.title)
                    Spacer()

                }
                Slider(value: $movie.rating, in: 1...5, step: 1)
            }
            Section {
                SectionTitle(title: "Seen")
                Toggle(isOn: $movie.seen) {
                    if movie.title == "" {
                        Text("Has seen this movie")
                    } else {
                        Text("I have see \(movie.title)")
                    }
                }
            }
            Section{
                Button(action:{}) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie())
    }
}

struct SectionTitle: View {
    
    var title: String
    
    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray )
    }
}
