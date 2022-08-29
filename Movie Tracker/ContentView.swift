//
//  ContentView.swift
//  Movie Tracker
//
//  Created by Florent on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var title = ""
    @State var rating = 3.0
    @State var seen = false

    
    var body: some View {
        List {
            Section{
                TextField("Movie title", text: $title)
            }
            Section{
                HStack() {
                    Spacer()
                    Text(String(repeating: "★", count: Int(rating))).foregroundColor(.yellow).font(.title)
                    Spacer()

                }
                Slider(value: $rating, in: 1...5, step: 1)
            }
            Section {
                Toggle(isOn: $seen) {
                    Text("Has seen this movie")
                }
            }
        }.listStyle(GroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
