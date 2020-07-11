@testable import Strategy
import XCTest

final class StrategyTests: XCTestCase {
    func testMallarDuck() {
        let duck: Duck = MallardDuck()

        let quack = duck.performQuack()
        let fly = duck.performFly()
        XCTAssertEqual(quack, "Quack")
        XCTAssertEqual(fly, "I'm flying!!")
    }

    static var allTests = [
        ("testMallarDuck", testMallarDuck),
    ]
}
