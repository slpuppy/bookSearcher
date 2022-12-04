import Foundation

// MARK: - Default values

extension ApiEndpoint {
    var domain: String { "api.mercadoeditorial.org" }
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

