
import Combine
import Foundation
import SwiftUI

class BookListViewModel: ObservableObject {
    
    let networkService = BookNetworkingService()
    
    @Published var searchText: String = ""
    @Published var books = [Book]()
    @Published var likedBooks = [LikedBook]()

    var timer: Timer?
    
    func fetchSearchResults() {
        if searchText == "" {
            return
        }
        networkService.getBooksByTitle(title: searchText) { result in
            switch result {
            case .success(let apiData):
                print("It worked!")
                DispatchQueue.main.async {
                    self.books = apiData.books
                }
            case .failure(ApiError.custom(let message)):
                print("API CUSTOM ERROR", message)
            case .failure(let error):
                print("vish", error)
            }
        }
    }
    
    func onUserTyped(search: String) {
        
        if search == "" {
            timer?.invalidate()
            books = []
            return
        }
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
            self.fetchSearchResults()
        }
        
    }
  func saveBookToUserDefaults(book: Book) {
        
        let savedBooks = fetchLikedBooks()
      
        let book = LikedBook(titulo: book.titulo, subtitulo: book.subtitulo, sinopse: book.sinopse)
       
        var likedBooks = [book]
        
        do {
            likedBooks.append(contentsOf: savedBooks)
            let encoder = JSONEncoder()
            let data = try encoder.encode(likedBooks)
            UserDefaults.standard.set(data, forKey: "likedBooks")
            print("saved")
        } catch {
            print("Unable to Encode Note (\(error))")
        }
    }
    
    func fetchLikedBooks() -> [LikedBook] {
        var likedBooks = [LikedBook]()
        if let data = UserDefaults.standard.data(forKey: "likedBooks") {
            do {
                 let decoder = JSONDecoder()

                 let books = try decoder.decode([LikedBook].self, from: data)
                 likedBooks = books
                 self.likedBooks = likedBooks
             } catch {
                 print("Unable to Decode Notes (\(error))")
             }
        }
        return likedBooks
    }
    
    
    
}

