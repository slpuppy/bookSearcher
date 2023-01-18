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
            Text(book.title.uppercased())
                .font(.system(size: 22))
                .bold()
               
            Text(book.subtitle ?? "")
                .italic()
                .font(.system(size: 16))
            
            if book.contributors.first != nil {
                Text("\(book.contributors[0]?.name ?? "") \(book.contributors[0]?.lastName ?? "")")
                    .font(.system(size: 14))
                    .bold()
                    .padding(.bottom, 24)
            }
               
            Spacer()
            ScrollView{
                Text(book.synopsis)
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
