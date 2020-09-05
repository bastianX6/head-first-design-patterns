@testable import FacadePattern
import XCTest

final class FacadePatternTests: XCTestCase {
    var sut: HomeTheaterFacade!

    var tuner: Tuner!
    var dvdPlayer: DvdPlayer!
    var cdPlayer: CdPlayer!
    var amplifier: Amplifier!
    var projector: Projector!
    var lights: TheaterLights!
    var screen: Screen!
    var popper: PopcornPopper!

    override func setUp() {
        self.tuner = Tuner(amplifier: nil)
        self.dvdPlayer = DvdPlayer(amplifier: nil)
        self.cdPlayer = CdPlayer(amplifier: nil)
        self.amplifier = Amplifier(tuner: self.tuner, dvdPlayer: self.dvdPlayer, cdPlayer: self.cdPlayer)

        self.tuner.amplifier = self.amplifier
        self.dvdPlayer.amplifier = self.amplifier
        self.cdPlayer.amplifier = self.amplifier

        self.projector = Projector(player: self.dvdPlayer)
        self.lights = TheaterLights()
        self.screen = Screen()
        self.popper = PopcornPopper()

        self.sut = HomeTheaterFacade(amplifier: self.amplifier,
                                     tuner: self.tuner,
                                     dvdPlayer: self.dvdPlayer,
                                     cdPlayer: self.cdPlayer,
                                     projector: self.projector,
                                     lights: self.lights,
                                     screen: self.screen,
                                     popper: self.popper)
    }

    func testWatchMovie() {
        self.sut.watchMovie()

        XCTAssert(self.popper.isOn, "Popper is off")
        XCTAssert(self.popper.wasPopped, "Popper wasn't popped")
        XCTAssertEqual(self.lights.dim, 10.0)
        XCTAssertEqual(self.screen.screenPosition, .down)
        XCTAssert(self.projector.isOn, "Projector if off")
        XCTAssertEqual(self.projector.mode, .wideScreen)
        XCTAssert(self.amplifier.isOn, "Amplifier is off")
        XCTAssertEqual(self.amplifier.sourceType, .dvdPlayer)
        XCTAssertEqual(self.amplifier.audioType, .surround)
        XCTAssertEqual(self.amplifier.volume, 5.0)
        XCTAssert(self.dvdPlayer.isOn, "Dvd Player is off")
        XCTAssertEqual(self.dvdPlayer.movieStatus, .playing)
    }

    func testEndMovie() {
        self.sut.watchMovie()
        self.sut.endMovie()

        XCTAssertFalse(self.popper.isOn, "Popper is on")
        XCTAssert(self.lights.isOn, "Light is off")
        XCTAssertEqual(self.screen.screenPosition, .up)
        XCTAssertFalse(self.projector.isOn, "Projector if on")
        XCTAssertFalse(self.amplifier.isOn, "Amplifier is on")
        XCTAssertEqual(self.dvdPlayer.movieStatus, .stopped)
        XCTAssert(self.dvdPlayer.wasEjected, "Dvd not ejected")
        XCTAssertFalse(self.dvdPlayer.isOn, "Dvd Player is on")
    }

    static var allTests = [
        ("testWatchMovie", testWatchMovie),
        ("testEndMovie", testEndMovie),
    ]
}
