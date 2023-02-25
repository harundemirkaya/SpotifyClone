//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Harun Demirkaya on 25.02.2023.
//

import SwiftUI

struct TabBar: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection){
            HomePage()
                .tabItem {
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(0)
            SearchPage()
                .tabItem {
                    VStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(1)
            LibraryPage()
                .tabItem {
                    VStack{
                        Image(systemName: "books.vertical")
                        Text("Library")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
