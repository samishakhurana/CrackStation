import XCTest
import CryptoKit
import Foundation
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testGetPlaneTextForHash1() throws {
        let hashString = "e69f20e9f683920d3fb4329abd951e878b1f9372"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "F")
    }
    
    func testGetPlaneTextForHash2() throws {
        let hashString = "e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "b")
    }
    
    func testGetPlaneTextForHash3() throws {
        let hashString = "ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "5")
    }
    
    func testGetPlaneTextForHash4() throws {
        let hashString = "HHH"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, nil)
    }
    
    func testGetPlaneTextForHash5() throws {
        let hashString = "2c419ecc92764743f64744ccdd6bcb85e34e5ae8"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "Aa")
    }
    
    func testGetPlaneTextForHash6() throws {
        let hashString = "9a79be611e0267e1d943da0737c6c51be67865a0"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "99")
    }
    
    func testGetPlaneTextForHash7() throws {
        let hashString = "2b05728046b3584193044ff8871fbef84737b660"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "?ab")
    }
    
    func testGetPlaneTextForHash8() throws {
        let hashString = "bcbb1abbf05e44a255473429c1b1e7430313afab21a3c6aa04df81196dcbd7c8"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "?ab")
    }
    
    func testGetPlaneTextForHash9() throws {
        let hashString = "c005b3f2d23c83c9d07e397185cc8816e5ea95e3d30d80f9f69424c31b4f7ceb"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "?1A")
    }
    
    func testGetPlaneTextForHash10() throws {
        let crackPswdInstance = CrackStation()
        
        let charArray = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "0", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        
        
        for val1 in charArray {
            for val2 in charArray {
                for val3 in charArray {
                    let str = val1 + val2 + val3
                    
                    let dataToHash = Data(str.utf8)
                    let shaHashDescription = String(Insecure.SHA1.hash(data: dataToHash).description)
                    let prefix = "SHA 1 digest: "
                    let shaHash = String(shaHashDescription.dropFirst(prefix.count - 1))
                    
                    let value = crackPswdInstance.decrypt(shaHash: shaHash)
                    
                    XCTAssertEqual(value, str)
                }
            }
        }
    }
}
