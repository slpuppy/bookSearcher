//
//  SearchView.swift
//  References
//
//  Created by Gabriel Puppi on 01/12/22.
//

import SwiftUI

struct MyBookshelfView: View {
    
    
   // let myBooks: [Book] = BookStoreMock.books
    
  //  @State var books = [Book]()
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
                    LazyVGrid(columns: columns){
                        ForEach(viewModel.books) { book in
                            BookCell(book: book)
                                .padding()
                        }.aspectRatio(1, contentMode: .fill)
                    }.padding()
                }
            }
            .navigationTitle("My Books")
        }
        .onAppear(perform: viewModel.fetchSearchResults)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookshelfView()
    }
}
