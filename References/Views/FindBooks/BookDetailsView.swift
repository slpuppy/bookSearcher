//
//  SwiftUIView.swift
//  References
//
//  Created by Gabriel Puppi on 01/12/22.
//

import SwiftUI

struct BookDetailsView: View {
    
    @StateObject var viewModel = BookListViewModel()
    let book: Book
    
    @State var searchBarText = ""
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        VStack(alignment: .center){
            Text(book.titulo).font(.system(size: 18))
                .bold()
                .padding(.bottom, 16)
            ScrollView{
                Text(book.sinopse)
            }
            
        }.padding(20)
       
//
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookDetailsView()
//    }
//}
