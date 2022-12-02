
import Foundation


struct Book: Decodable, Identifiable {
  let id = UUID()
  let titulo: String
  let subtitulo: String
  let sinopse: String
  let imagens: BookImages?
 // let contribuicao: BookWriter?

  
  enum CodingKeys: String, CodingKey {
  
    case titulo, subtitulo, sinopse, imagens//, contribuicao
   
  }
}
