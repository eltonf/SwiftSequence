import XCTest
@testable import SwiftSequence

class TakeDropTests: XCTestCase {
  
  // MARK: Eager
  
  func testTakeWhile() {
    
    let taken = [1, 2, 3, 4, 5, 1, 2, 3].takeWhile { $0 < 5 }
    
    let expectation = [1, 2, 3, 4]
    
    XCTAssert(taken == expectation)
    
  }
  
  func testDropwhile() {
    
    let dropped = [1, 2, 3, 4, 5, 1, 2, 3].dropWhile { $0 < 5 }
    
    let expectation = [5, 1, 2, 3]
    
    XCTAssert(dropped == expectation)
    
  }
  
  // MARK: Lazy
  
  func testLazyTakeWhile() {
    
    let taken = lazy([1, 2, 3, 4, 5, 1, 2, 3]).takeWhile { $0 < 5 }
    
    let expectation = [1, 2, 3, 4]
    
    XCTAssert(taken.elementsEqual(expectation))
    
    let _ = taken.array()
    
  }
  
  func testLazyDropwhile() {
    
    let dropped = lazy([1, 2, 3, 4, 5, 1, 2, 3]).dropWhile { $0 < 5 }
    
    let expectation = [5, 1, 2, 3]
    
    XCTAssert(dropped.elementsEqual(expectation))
    
    let _ = dropped.array()
    
  }
}