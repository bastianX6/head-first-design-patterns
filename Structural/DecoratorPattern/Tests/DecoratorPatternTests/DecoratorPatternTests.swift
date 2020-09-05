@testable import DecoratorPattern
import XCTest

final class DecoratorPatternTests: XCTestCase {
    func testSingleBeverage() {
        let decaf = Decaf()
        let houseBlend = HouseBlend()
        let espresso = Espresso()
        let darkRoast = DarkRoast()

        XCTAssertEqual(decaf.description, "Decaf Coffee")
        XCTAssertEqual(decaf.cost, 1.05)

        XCTAssertEqual(houseBlend.description, "House Blend Coffee")
        XCTAssertEqual(houseBlend.cost, 0.89)

        XCTAssertEqual(espresso.description, "Espresso")
        XCTAssertEqual(espresso.cost, 1.99)

        XCTAssertEqual(darkRoast.description, "Dark Roast Coffee")
        XCTAssertEqual(darkRoast.cost, 0.99)
    }

    func testBeverageWithCondiments() {
        var beverage: Beverage = DarkRoast()
        beverage = Mocha(beverage: beverage)
        beverage = Mocha(beverage: beverage)
        beverage = Whip(beverage: beverage)

        XCTAssertEqual(beverage.description, "Dark Roast Coffee, Mocha, Mocha, Whip")
        XCTAssertEqual(beverage.cost, 1.49)
    }

    func testBeverageWithCondiments2() {
        var beverage: Beverage = HouseBlend()
        beverage = Soy(beverage: beverage)
        beverage = Mocha(beverage: beverage)
        beverage = Whip(beverage: beverage)

        XCTAssertEqual(beverage.description, "House Blend Coffee, Soy, Mocha, Whip")
        XCTAssertEqual(beverage.cost, 1.34)
    }

    static var allTests = [
        ("testSingleBeverage", testSingleBeverage),
        ("testBeverageWithCondiments", testBeverageWithCondiments),
        ("testBeverageWithCondiments2", testBeverageWithCondiments2),
    ]
}
