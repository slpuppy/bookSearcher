

import Foundation


struct BookImages: Decodable {
    
    let coverImage: BookImagesSizes?

    enum CodingKeys: String, CodingKey {
    
      case coverImage = "imagem_primeira_capa"
     
    }
}

