import Foundation

struct ResponseDTO<T>: Decodable where T: Decodable {
    let payload: T
    
    private enum CodingKeys: String, CodingKey {
        case payload = "books"
        case status
    }
    
   init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let statusContainer = try container.nestedContainer(keyedBy: ApiStatusCodingKeys.self, forKey: .status)
        let isSuccessful = try statusContainer.decode(Bool.self, forKey: .success)
        
        if !isSuccessful {
            let message = try statusContainer.decode(String.self, forKey: .message)
            throw ApiError.custom(message)
        }
        
        payload = try .init(from: decoder)
    }
}
