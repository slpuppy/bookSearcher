
import Combine
import Foundation
import SwiftUI

class BookListViewModel: ObservableObject {
  
    let networkService = BookNetworkingService()
    
    @Published var searchText: String = ""
    @Published var books = [Book]()
    
    func fetchSearchResults() {
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
            print(self.books)
            
          
            
           
            
            print(result)
        }
        
        
        
    }
    
    
    

}
  
