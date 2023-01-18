

import SwiftUI

struct BookCell: View {
    
    @StateObject var viewModel = BookListViewModel()
    @State var isLiked = false
    
    let book: Book
    var body: some View {
        
        HStack {
            ZStack{
                Color("tabAccent")
                Image(systemName: "book.closed")
                    .foregroundColor(.white)
                    
            }.frame(width: 60, height: 60)
                .cornerRadius(12)
            
            VStack(alignment: .leading){
                Text(book.title)
                    .font(.system(size: 14)).bold()
                HStack{
                    if book.contributors.first != nil {
                        Text("\(book.contributors[0]?.name ?? "") \(book.contributors[0]?.lastName ?? "")")
                            .font(.system(size: 11))
                        Spacer()
                    }
                    }
                Spacer()
            }
            .padding(.top, 8)
            Spacer()
            Image(systemName: self.isLiked == false ? "heart" : "heart.fill")
                .foregroundColor(Color("tabAccent"))
                .onTapGesture {
                    self.isLiked = true
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
