@testable import IteratorPattern
import XCTest

final class IteratorPatternTests: XCTestCase {
    private let output = """
    MENU
    ----
    BREAKFAST
    K&B's Pancake Breakfast, 2.99 -- Pancakes with scrambled eggs, and toast
    Regular Pancake Breakfast, 2.99 -- Pancake with fried eggs, sausage
    Blueberry Pancakes, 3.49 -- Pancakes made with fresh blueberries
    Wafles, 3.59 -- Wafles, with your choise of blueberries or strawberries


    LUNCH
    Vegetarian BLT, 2.99 -- (Fakin´) Bacon with lettuce & tomato on whole wheat
    BLT, 2.99 -- Bacon with lettuce & tomato on whole wheat
    Soup of the day, 3.29 -- Soup of the day, with a side of potato salad
    Hotdog, 3.05 -- A hot dog, with saurkraut, relish, onions, topped with cheese
    """

    func testCustomWaitress() {
        let pancakeHouseMenu = PancakeHouseMenu()
        let dinerMenu = DinerMenu()
        let waitress = CustomIteratorWaitress(pacakeHouseMenu: pancakeHouseMenu, dinerMenu: dinerMenu)
        waitress.printMenu()
        XCTAssertEqual(waitress.output, self.output)
    }

    func testSwiftWaitress() {
        let pancakeHouseMenu = PancakeHouseMenu()
        let dinerMenu = DinerMenu()
        let waitress = SwiftWaitress(pacakeHouseMenu: pancakeHouseMenu, dinerMenu: dinerMenu)
        waitress.printMenu()
        XCTAssertEqual(waitress.output, self.output)
    }

    static var allTests = [
        ("testCustomWaitress", testCustomWaitress),
        ("testSwiftWaitress", testSwiftWaitress),
    ]
}
