@testable import AdapterPattern
import XCTest

final class AdapterPatternTests: XCTestCase {
    func testTurkeyAdapter() {
        let turkey = WildTurkey()
        let adapter: Duck = TurkeyAdapter(turkey: turkey)

        let flyText = self.getTurkeyAdapterText(turkey: turkey)

        XCTAssertEqual(adapter.fly(), flyText)
        XCTAssertEqual(adapter.quack(), "Gobble gobble")
    }

    private func getTurkeyAdapterText(turkey: Turkey) -> String {
        var str = ""
        for _ in 0 ..< 5 {
            str += "\(turkey.fly())\n"
        }
        return str
    }

    static var allTests = [
        ("testTurkeyAdapter", testTurkeyAdapter),
    ]
}
