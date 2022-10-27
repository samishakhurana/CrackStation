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
}
