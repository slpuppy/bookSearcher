
import Foundation


extension Data {
    var dictionary: [String: Any]? {
        try? JSONSerialization.jsonObject(with: self) as? [String: Any]
    }
}


