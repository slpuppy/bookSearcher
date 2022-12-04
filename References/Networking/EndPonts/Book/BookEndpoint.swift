import Foundation


enum BookEndpoint: ApiEndpoint {
    case title(String)
    case author(String)

    var path: String {
        switch self {
        case .title:
            return "book"
        case .author:
            return "author"
        }
    }
    
    var query: [String : String]? {
        switch self {
        case let .title(title):
            return ["titulo": title]
        case let .author(author):
            return ["autor": author]
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .title,
             .author:
            return .get
        }
    }
}
