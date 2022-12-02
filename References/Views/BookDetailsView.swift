//
//  SwiftUIView.swift
//  References
//
//  Created by Gabriel Puppi on 01/12/22.
//

import SwiftUI

struct BookDetailsView: View {
    
    @State var searchBarText = ""
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        Text("asa")
//        NavigationView{
//            VStack {
//                ZStack{
//                    Color("appLightGray")
//                    HStack{
//
//                        Image(systemName: "magnifyingglass")
//                        TextField("Search", text: $searchBarText)
//                    }.padding([.leading, .trailing])
//
//                }
//                .cornerRadius(50)
//                .frame(height: 60)
//                .padding()
//
//                HStack{
//                    Text("Recently added books:").bold()
//                    Spacer()
//                }
//
//
//                ScrollView{
//                    LazyVGrid(columns: columns){
//
//                        ForEach(myBooks) { book in
//                            BookCell(title: book.titulo)
//                        }.aspectRatio(1, contentMode: .fill)
//
//
//
//                    }
//                }
//
//
//            }.padding()
//            .navigationTitle("Find a book")
//        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView()
    }
}
