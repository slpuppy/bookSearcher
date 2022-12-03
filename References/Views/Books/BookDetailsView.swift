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

    var body: some View {
        
        VStack(alignment: .leading){
            Text(book.titulo.uppercased())
                .font(.system(size: 22))
                .bold()
               
            Text(book.subtitulo ?? "")
                .italic()
                .font(.system(size: 16))
            
            if book.contribuicao.first != nil {
                Text("\(book.contribuicao[0]?.nome ?? "") \(book.contribuicao[0]?.sobrenome ?? "")")
                    .font(.system(size: 14))
                    .bold()
                    .padding(.bottom, 24)
            }
               
            Spacer()
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
