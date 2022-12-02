
import Combine
import Foundation
import SwiftUI

class BookListViewModel: ObservableObject {
    
    let networkService = BookNetworkingService()
    
    @Published var searchText: String = ""
    @Published var books = [Book]()

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
    
    
    
    
}

