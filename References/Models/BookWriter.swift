

import Foundation


struct BookWriter: Decodable {
    
    let nome: String
    let sobrenome: String
    
  
    
    enum CodingKeys: String, CodingKey {
    
      case nome, sobrenome
     
    }
    
    
}

