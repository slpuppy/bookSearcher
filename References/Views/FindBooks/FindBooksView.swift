//
//  SearchView.swift
//  References
//
//  Created by Gabriel Puppi on 01/12/22.
//

import SwiftUI

struct FindBooksView: View {

    @StateObject var viewModel = BookListViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            VStack {
                ZStack{
                    Color("appLightGray")
                    HStack{
                        
                        Image(systemName: "magnifyingglass")
                        TextField("Search", text: $viewModel.searchText)
                            .onChange(of: viewModel.searchText, perform: viewModel.onUserTyped)
                    }.padding()
                }
                .cornerRadius(50)
                .frame(height: 60)
                .padding()
                
                ScrollView{
                    
                    ForEach(viewModel.books) { book in
                        
                        NavigationLink(destination: BookDetailsView(book: book)) {
                            BookCell(book: book)
                        }.buttonStyle(.plain)
                            .padding(20)
                        
                    }
                    
                }
            }
            .navigationTitle("Find Books")
        }
        .onAppear(perform: viewModel.fetchSearchResults)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        FindBooksView()
    }
}
