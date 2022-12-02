
import Combine
import Foundation
import SwiftUI

class BookListViewModel: ObservableObject {
  
    var searchText: String = ""
    
    let networkService = BookNetworkingService()
  

    
    func fetchSearchResults() {
        networkService.getBooksByTitle(title: searchText) { result in
            switch result {
            case .success(let apiData):
                print("It worked!", apiData)
            case .failure(ApiError.custom(let message)):
                print("API CUSTOM ERROR", message)
            case .failure(let error):
                print("vish", error)
            }
            print(result)
        }
        
        
        
    }
    
    
    

}
  
