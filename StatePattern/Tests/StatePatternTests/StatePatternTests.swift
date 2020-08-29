@testable import StatePattern
import XCTest

final class StatePatternTests: XCTestCase {
    func testGumballMachine() {
        let machine = GumballMachine(numerOfGumballs: 2)

        XCTAssert(machine.description.contains(GumballMachineL10n.inventory(gumballs: 2)))
        machine.insertQuarter()
        machine.turnCrank()

        XCTAssert(machine.description.contains(GumballMachineL10n.inventory(gumballs: 1)))
        machine.insertQuarter()
        machine.turnCrank()

        XCTAssert(machine.description.contains(GumballMachineL10n.inventory(gumballs: 0)))
        XCTAssert(machine.description.contains(GumballMachineL10n.soldOut))

        print(machine.output)
    }

    func testTurnCrankWithoutQuarter() {
        let machine = GumballMachine(numerOfGumballs: 1)
        machine.turnCrank()

        let output = String(machine.output.dropLast())

        XCTAssertEqual(output, "\(NoQuarterL10n.turnCrank)\n\(NoQuarterL10n.dispense)")
        XCTAssert(machine.description.contains(GumballMachineL10n.inventory(gumballs: 1)))
        print(machine.output)
    }

    static var allTests = [
        ("testGumballMachine", testGumballMachine),
        ("testTurnCrankWithoutQuarter", testTurnCrankWithoutQuarter),
    ]
}
