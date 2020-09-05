@testable import TemplateMethodPattern
import XCTest

final class TemplateMethodPatternTests: XCTestCase {
    func testLegacyBeverages() {
        let legacyCoffee = LegacyCoffee()
        legacyCoffee.prepareRecipe()

        let legacyTea = LegacyTea()
        legacyTea.prepareRecipe()

        XCTAssertEqual(legacyCoffee.output, self.getCoffeeOutput())
        XCTAssertEqual(legacyTea.output, self.getTeaOutput())
    }

    func testNewBeverages() {
        let coffee: CaffeineBeverage = Coffee()
        coffee.prepareRecipe()

        let tea: CaffeineBeverage = Tea()
        tea.prepareRecipe()

        XCTAssertEqual(coffee.output, self.getCoffeeOutput())
        XCTAssertEqual(tea.output, self.getTeaOutput())
    }

    static var allTests = [
        ("testLegacyBeverages", testLegacyBeverages),
        ("testNewBeverages", testNewBeverages),
    ]

    private func getCoffeeOutput() -> String {
        var output = ""

        output += "Boiling water\n"
        output += "Dripping Coffee through filter\n"
        output += "Pouring into cup\n"
        output += "Adding Sugar and Milk\n"

        return output
    }

    private func getTeaOutput() -> String {
        var output = ""

        output += "Boiling water\n"
        output += "Steeping the tea\n"
        output += "Pouring into cup\n"
        output += "Adding Lemon\n"

        return output
    }
}
