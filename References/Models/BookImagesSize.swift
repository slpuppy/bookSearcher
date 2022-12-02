

import Foundation


struct BookImagesSizes: Decodable {
    
    let pequena: String?
    let media: String?
    let grande: String?
    
    
    enum CodingKeys: String, CodingKey {
    
      case pequena, media, grande
     
    }
    
}


