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
    
    var body: some View {
        List {
            Section{
                TextField("Movie title", text: $title)
            }
            Section{
                Slider(value: $rating, in: 1...5, step: 1)
            }
        }.listStyle(GroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
