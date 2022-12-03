

import Foundation


struct BookImages: Decodable {
    
    let imagem_primeira_capa: BookImagesSizes?

    enum CodingKeys: String, CodingKey {
    
      case imagem_primeira_capa
     
    }
}

