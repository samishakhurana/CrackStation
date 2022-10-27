import XCTest
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
        
        XCTAssertEqual(value, "invalid")
    }
}
