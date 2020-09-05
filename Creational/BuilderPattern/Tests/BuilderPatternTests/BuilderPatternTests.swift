@testable import BuilderPattern
import XCTest

final class BuilderPatternTests: XCTestCase {
    func testCarBuilder() {
        let carBuilder = CarBuilder()
        Director.makeSportCar(builder: carBuilder)

        let sportCar = carBuilder.getResult()

        XCTAssertEqual(sportCar.seats, 2)
        XCTAssertEqual(sportCar.engine, Engine.sport)
        XCTAssertEqual(sportCar.hasTripComputer, true)
        XCTAssertEqual(sportCar.hasGPS, true)

        Director.makeSUV(builder: carBuilder)

        let suv = carBuilder.getResult()

        XCTAssertEqual(suv.seats, 6)
        XCTAssertEqual(suv.engine, Engine.default)
        XCTAssertEqual(suv.hasTripComputer, false)
        XCTAssertEqual(suv.hasGPS, true)
    }

    func testCarManualBuilder() {
        let carManualBuilder = CarManualBuilder()
        Director.makeSportCar(builder: carManualBuilder)

        let sportCarManual = carManualBuilder.getResult()

        XCTAssertEqual(sportCarManual.seats, 2)
        XCTAssertEqual(sportCarManual.engine, Engine.sport)
        XCTAssertEqual(sportCarManual.hasTripComputer, true)
        XCTAssertEqual(sportCarManual.hasGPS, true)

        Director.makeSUV(builder: carManualBuilder)

        let suvManual = carManualBuilder.getResult()

        XCTAssertEqual(suvManual.seats, 6)
        XCTAssertEqual(suvManual.engine, Engine.default)
        XCTAssertEqual(suvManual.hasTripComputer, false)
        XCTAssertEqual(suvManual.hasGPS, true)
    }

    static var allTests = [
        ("testCarBuilder", testCarBuilder),
        ("testCarManualBuilder", testCarManualBuilder),
    ]
}
