import Foundation

public struct CrackStation: Decrypter {
    private let lookupTable: [String : String]
    
    public init() {
        do {
            self.lookupTable = try CrackStation.loadDictionaryFromDisk()
        } catch {
            self.lookupTable = [:]
        }
    }
    
    static func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "hashMap", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }
    
    public func decrypt(shaHash: String) -> String? {
        return self.lookupTable[shaHash] ?? "invalid"
    }
}
