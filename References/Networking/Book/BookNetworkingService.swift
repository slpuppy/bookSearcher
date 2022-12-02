import Foundation

class BookNetworkingService: URLSession {
    let session = URLSession.shared

    func getBooksByTitle(title: String, completion: @escaping (Result<BookList, Error >) -> ()) {
        session.dataTask(BookList.self, endpoint: BookEndpoint.title(title), completion: completion).resume()
    }
}


