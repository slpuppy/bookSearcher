

import SwiftUI

struct BookCell: View {
    
    @StateObject var viewModel = BookListViewModel()
   
    let book: Book
    var body: some View {
        
        HStack {
            ZStack {
                if let imageUrl = book.imagens?.imagem_primeira_capa?.pequena {
                    
                    AsyncImage(url: URL(string: imageUrl)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .overlay(
                                Color.black.opacity(0.3))
                    } placeholder: {
                        
                        ZStack{
                            Color("tabAccent")
                            Text("No image")
                        }
                    }
                    .cornerRadius(15)
                    .onAppear {
                        print(imageUrl)
                    }.frame(width: 60, height: 60)
                }
            }
            VStack(alignment: .leading){
                
                Text(book.titulo)
                    .font(.system(size: 14)).bold()
                Text(book.subtitulo)
                    .font(.system(size: 11))
                Spacer()
           }
            .padding(.top, 8)
            Spacer()
            Image(systemName: "heart")
                .foregroundColor(Color("tabAccent")).onTapGesture {
                    
                    viewModel.saveBookToUserDefaults(book: book)
                }
            
        }
        
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookCell(book: Book(titulo: "Cap", imagens: BookImages(imagem_primeira_capa: nil, imagem_lombada: nil, imagem_quarta_capa: nil), contribuicao: "mark"))
//    }
//}
