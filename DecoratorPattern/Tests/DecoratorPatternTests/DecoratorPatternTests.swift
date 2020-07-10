import XCTest
@testable import DecoratorPattern

final class DecoratorPatternTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DecoratorPattern().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
