

import Foundation


struct BookImages: Decodable {
    
    let imagem_primeira_capa: BookImagesSizes?
    let imagem_lombada: BookImagesSizes?
    let imagem_quarta_capa: BookImagesSizes?
    
    enum CodingKeys: String, CodingKey {
    
      case imagem_primeira_capa, imagem_lombada, imagem_quarta_capa
     
    }
    
    
}

