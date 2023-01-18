import Foundation


struct LikedBook: Codable, Identifiable {
  let id = UUID()
  let title: String
  let subtitle: String
  let synopsis: String
  var liked: Bool 


  
  enum CodingKeys: String, CodingKey {
  
    case title = "titulo"
    case subtitle = "subtitulo"
    case synopsis = "sinopse"
    case liked = "liked"
   }
}

