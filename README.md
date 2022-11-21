# CrackStation, a Decrypter Implementation

Decrypts SHA1 and SHA256 [unsalted](https://en.wikipedia.org/wiki/Salt_(cryptography)) hashes to plane text for all strings matching [A-Za-z0-9?!]{1,3} regular expression.

## Overview

This swift package is built as a part of an assignment for Software Engineering class (CS561). The API is capable to decrypt SHA1 and SHA256 unsalted hashes corresponding to string with characters A to Z, a to Z, 0 to 9, ? and ! upto 3 character length. It helps in understanding both ends of security - encryption and decryption.

## Mission Statement

The aim is to understanding how password decryption works, basics of hash functions and introduction to security domain. It promotes us to think why Password Salting is important in all applications and how easily our passwords can be cracked if backend application is not storing them properly. This exercise will definitely help students keep the security aspect in mind while developing future applications.

## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager) is "a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift Packet Manager setup, add crackstation to the list of dependencies in your Package.swift file:

```
  dependencies: [
    .package(url: "git@github.com:samishakhurana/CrackStation.git", .upToNextMajor(from: "1.0.0")),
  ]
```

## Usage

### The API

First step is to initialise the crack station instance. This should be done once as it boots up the application and loads the look up dictionary in memory.
Init finction signature - 

```
  public init()
```

Next public API is decrypt function. It accepts the hash and return corresponding plane text password. It return nil if there is no matched password for the given hash
Decrypt function signature - 

```
  public func decrypt(shaHash: String) -> String?
```

### An example

Please refer to below example which is using the CrackStation API in order to unit test it for SHA 1 hash string

```
  import XCTest
  import Foundation
  @testable import CrackStation
  
  final class CrackStationTests: XCTestCase {
    func testGetPlaneTextForHash1() throws {
        let hashString = "e69f20e9f683920d3fb4329abd951e878b1f9372"
        let crackPswdInstance = CrackStation()
        let value = crackPswdInstance.decrypt(shaHash: hashString)
        
        XCTAssertEqual(value, "F")
    }
  }
```

CrackStation Package can be used similarly by removing the test function.

## Author

Samisha Khurana


