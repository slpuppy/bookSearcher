//
//  LikedBooksView.swift
//  References
//
//  Created by Gabriel Puppi on 02/12/22.
//

import SwiftUI

struct LikedBooksView: View {
    
    @StateObject var viewModel = BookListViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack{
                ScrollView{
                    
                    ForEach(viewModel.likedBooks) { book in
                        LikedBookCell(likedBook: book)
                        Divider()
                    }
                }
                
            }.onAppear{
                viewModel.fetchLikedBooks()
            }.padding()
                .navigationTitle("Saved Books")
        }
    }
    
}

struct LikedBooksView_Previews: PreviewProvider {
    static var previews: some View {
        LikedBooksView()
    }
}
