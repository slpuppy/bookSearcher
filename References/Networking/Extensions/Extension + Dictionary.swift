import Foundation

extension Dictionary where Key == String, Value == Any {
    func nested(forKey key: String) -> [String: Any]? {
        self[key] as? [String: Any]
    }
}

extension Dictionary where Key == String {
    var data: Data? {
        try? JSONSerialization.data(withJSONObject: self)
    }
}
