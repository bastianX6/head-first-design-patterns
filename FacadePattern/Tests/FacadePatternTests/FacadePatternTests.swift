import XCTest
@testable import FacadePattern

final class FacadePatternTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FacadePattern().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
