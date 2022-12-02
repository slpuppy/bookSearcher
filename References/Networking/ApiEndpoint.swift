import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

protocol ApiEndpoint {
    var domain: String { get }
    var pathPrefix: String { get }
    var path: String { get }
    var body: Data? { get }
    var method: HTTPMethod { get }
    var query: [String: String]? { get }
}

// MARK: - Default values
extension ApiEndpoint {
    var domain: String { "sandbox.mercadoeditorial.org" }
    var pathPrefix: String { "api/v1.2/" }
    var body: Data? { nil }
    var method: HTTPMethod { .get }
    var query: [String: String]? { nil }
}

// MARK: - URL building
extension ApiEndpoint {
    private var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = domain
       
        if let query = query {
            components.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        }
        guard let url = components.url?
            .appendingPathComponent(pathPrefix)
            .appendingPathComponent(path)
                
                
        else { fatalError("Invalid url! \(self)") }

     
        
        print("URL IS", url)
                return url
            }
    
    
    var request: URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        if let body {
            request.httpBody = body
        }
        return request
    }
}

