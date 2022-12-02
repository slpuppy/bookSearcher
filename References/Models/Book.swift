
import Foundation


struct Book: Decodable, Identifiable {
  let id = UUID()
  let titulo: String

  
  enum CodingKeys: String, CodingKey {
  
    case titulo
   
  }
}
