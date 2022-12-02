//
//  ContentView.swift
//  References
//
//  Created by Gabriel Puppi on 30/11/22.
//

import SwiftUI

enum Tab {
    case home, books
}

struct ContentView: View {
    
    
    @State var tab: Tab = .home
    
    var body: some View {
        
        
        TabView(selection: $tab){
            FindBooksView().tabItem {
                Label("", systemImage: "magnifyingglass")
            }.tag(Tab.home)
                .navigationTitle("Find Books")
            
            LikedBooksView().tabItem {
                Label("", systemImage: "books.vertical")
            }.tag(Tab.books)
                .navigationTitle("Saved Books")
            
            
            
        }.accentColor(Color("tabAccent"))
        
        
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
