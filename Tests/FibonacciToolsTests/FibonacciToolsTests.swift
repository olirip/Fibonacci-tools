import XCTest
@testable import FibonacciTools

final class FibonacciToolsTests: XCTestCase {
  var tools = FibonacciTools()
    func testSequence() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(tools.sequenceFromTheStart(10), 55)
        XCTAssertEqual(tools.sequenceFromTheStart(30), 832040)
    }
  
  func testReduceIndex() throws {
      // This is an example of a functional test case.
      // Use XCTAssert and related functions to verify your tests produce the correct
      // results.
      XCTAssertEqual(tools.reduceIndex(10), 10)
      XCTAssertEqual(tools.reduceIndex(100), 92)
  }
}
