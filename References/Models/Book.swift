
import Foundation


struct Book: Decodable, Identifiable {
  let id = UUID()
  let title: String
  let subtitle: String?
  let synopsis: String
  let contributors: [BookWriter?]

enum CodingKeys: String, CodingKey {
  
    case title = "titulo"
    case subtitle = "subtitulo"
    case synopsis = "sinopse"
    case contributors = "contribuicao"
   
  }
}
