
import SwiftUI


struct LikedBookCell: View {
    
    @StateObject var viewModel = BookListViewModel()
    
   @State var likedBook: LikedBook
    
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading){
                
                Text(likedBook.titulo)
                    .font(.system(size: 14)).bold()
                Text(likedBook.subtitulo)
                    .font(.system(size: 11))
                Spacer()
              
            }
           Spacer()
            Image(systemName: likedBook.liked == true ? "heart.fill" : "heart.slash")
                .foregroundColor(Color("tabAccent"))
                .onTapGesture {
                    likedBook.liked = false
                    viewModel.removeBookFromLiked(book: likedBook)
                }
        }
      
        
    }
    
}
