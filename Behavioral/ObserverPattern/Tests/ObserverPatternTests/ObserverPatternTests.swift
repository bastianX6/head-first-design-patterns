@testable import ObserverPattern
import XCTest

final class ObserverPatternTests: XCTestCase {
    func testDefaultBehavior() {
        let data = WeatherData()

        let currentConditionsDisplay = CurrentConditionsDisplay(subject: data)
        let statisticsDisplay = StatisticsDisplay(subject: data)

        // First check
        data.setMeasurements(temperature: 80, humidity: 65, pressure: 30.4)

        XCTAssertEqual(currentConditionsDisplay.display(), "Current conditions: 80.0 ºC degrees and 65.0 % humidity")
        XCTAssertEqual(statisticsDisplay.display(), "Avg/Max/Min temperature: 80.00/80.00/80.00")

        // Second check
        data.setMeasurements(temperature: 82, humidity: 70, pressure: 29.2)
        XCTAssertEqual(currentConditionsDisplay.display(), "Current conditions: 82.0 ºC degrees and 70.0 % humidity")
        XCTAssertEqual(statisticsDisplay.display(), "Avg/Max/Min temperature: 81.00/82.00/80.00")

        // Third check
        data.setMeasurements(temperature: 78, humidity: 90, pressure: 29.2)
        XCTAssertEqual(currentConditionsDisplay.display(), "Current conditions: 78.0 ºC degrees and 90.0 % humidity")
        XCTAssertEqual(statisticsDisplay.display(), "Avg/Max/Min temperature: 80.00/82.00/78.00")
    }

    static var allTests = [
        ("testDefaultBehavior", testDefaultBehavior),
    ]
}
