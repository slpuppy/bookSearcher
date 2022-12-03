
import Foundation


struct Book: Decodable, Identifiable {
  let id = UUID()
  let titulo: String
  let subtitulo: String?
  let sinopse: String
  let contribuicao: [BookWriter?]

    // let imagens: BookImages?
// Como poucas imagens estão liberadas na api sem necessidade de autenticação comentei e decidi não utilizar as imagens.
enum CodingKeys: String, CodingKey {
  
    case titulo, subtitulo, sinopse, contribuicao
   
  }
}
