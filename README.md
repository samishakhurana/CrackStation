# CrackStation

This swift package is built as a part of an assignment for Software Engineering class (CS561). This is a POC for actual CrackStation implementation. The aim is to be able to decrypt the provided SHA1 hash to plane text password. Current version supports decryption of SHA 1 password hashes for single character and double character combination of a - z, A - Z, 0 - 9.

Version 1 allpows decryption of only single character string (1.0.0)
Version 1.1 allows decryption of double character string (1.1.0)

### How to Run ?

This is a swift package so in order to run it in your shift project, include it as a dependency in Package.swift file.

The api to decrypt the SHA 1 hash:
  func decrypt(shaHash: String) -> String?
  Class name to instantiate - CrackStation

#### Version 1.1.0

### Author
Samisha Khurana

Please note this is a POC for upcoming CrackStation MVP. So keep an eye on this space for more updates.
