//
//  BookCell.swift
//  References
//
//  Created by Gabriel Puppi on 01/12/22.
//

import SwiftUI

import SwiftUI

struct BookCell: View {
    
    let book: Book
    var body: some View {
        ZStack {
            
            if let imageUrl = book.imagens?.imagem_primeira_capa?.pequena {
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .onAppear {
                    print(imageUrl)
                }

                    
            }
           
            Text(book.titulo)
                .font(.footnote)
                .padding(.top, 80)
                .padding([.leading, .trailing])
                
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        BookCell(book: Book(titulo: "", imagens: BookImages(imagem_primeira_capa: nil, imagem_lombada: nil, imagem_quarta_capa: nil)))
    }
}
