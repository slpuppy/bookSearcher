
import Foundation


struct Book: Decodable, Identifiable {
  let id = UUID()
  let titulo: String
  let imagens: BookImages?

  
  enum CodingKeys: String, CodingKey {
  
    case titulo, imagens
   
  }
}
