

import Foundation


struct BookWriter: Decodable {
    
    let name: String
    let lastName: String
    
  
    
    enum CodingKeys: String, CodingKey {
    
      case name = "nome"
      case lastName = "sobrenome"
     
    }
    
    
}

