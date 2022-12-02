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
            HomeView().tabItem {
                Label("", systemImage: "house")
            }.tag(Tab.home)
                .navigationTitle("Home")
            
            MyBookshelfView().tabItem {
                Label("", systemImage: "books.vertical")
            }.tag(Tab.books)
                .navigationTitle("My Books")
            
            
            
        }.accentColor(Color("tabAccent"))
        
        
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
