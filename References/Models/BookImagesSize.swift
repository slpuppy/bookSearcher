

import Foundation


struct BookImagesSizes: Decodable {
    
    let small: String?
    let medium: String?
    let big: String?
    
    
    enum CodingKeys: String, CodingKey {
    
      case small = "pequena"
      case medium = "media"
      case big = "grande"
     
    }
    
}


