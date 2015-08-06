import XCTest
@testable import SwiftSequence

class EnumerateTests: XCTestCase {
  func testEnumerate() {
    
    let word = "hello".characters
    
    for (index, letter) in word.specEnumerate() {
      
      XCTAssert(word[index] == letter)
      
    }
  }
}