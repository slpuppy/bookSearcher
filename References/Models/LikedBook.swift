import Foundation


struct LikedBook: Codable, Identifiable {
  let id = UUID()
  let titulo: String
  let subtitulo: String
  let sinopse: String
  var liked: Bool 


  
  enum CodingKeys: String, CodingKey {
  
    case titulo, subtitulo, sinopse, liked
   
  }
}

