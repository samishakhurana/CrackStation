import Foundation

public struct CrackStation: Decrypter {
    private let lookupTableSHA1: [String : String]
    private let lookupTableSHA256: [String : String]
    
    public init() {
        do {
            self.lookupTableSHA1 = try CrackStation.loadDictionaryFromDisk(fileName: "hashMap1")
        } catch {
            self.lookupTableSHA1 = [:]
        }
        
        do {
            self.lookupTableSHA256 = try CrackStation.loadDictionaryFromDisk(fileName: "hashMap2")
        } catch {
            self.lookupTableSHA256 = [:]
        }
    }
    
    static func loadDictionaryFromDisk(fileName: String) throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: fileName, withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }
    
    public func decrypt(shaHash: String) -> String? {
        return self.lookupTableSHA1[shaHash] ?? self.lookupTableSHA256[shaHash]
    }
}
