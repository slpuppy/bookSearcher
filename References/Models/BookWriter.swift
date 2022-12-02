

import Foundation


struct BookWriter: Decodable {
    
    let nome: String
    let sobrenome: String
    let tipo_de_contribuicao: String
    let codigo_contribuicao: String
    
    enum CodingKeys: String, CodingKey {
    
      case nome, sobrenome, tipo_de_contribuicao, codigo_contribuicao
     
    }
    
    
}

