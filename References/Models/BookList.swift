import Foundation

struct BookList: Decodable {
    
    let books: [Book]
    
    enum CodingKeys: String, CodingKey {
    
      case books
     
    }
    
    
}



