import XCTest
import SwiftSequence

class EnumerateTests: XCTestCase {
  
  var allTests : [(String, () -> ())] {
    return [
      ("testEnumerate", testEnumerate)
    ]
  }
  
  
  func testEnumerate() {
    
    let word = "hello".characters
    
    for (index, letter) in word.specEnumerate() {
      
      XCTAssertEqual(word[index], letter)
      
    }
  }
}