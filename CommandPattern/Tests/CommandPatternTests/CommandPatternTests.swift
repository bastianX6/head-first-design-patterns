@testable import CommandPattern
import XCTest

final class CommandPatternTests: XCTestCase {
    func testSimpleRemoteControl() {
        let remote = SimpleRemoteControl()
        let light = Light(location: "Bedroom")
        let lightOnCommand = LightOnCommand(light: light)

        remote.setCommand(lightOnCommand)
        remote.buttonPressed()

        XCTAssert(light.isOn, "Light is off")
    }

    func testCommandReplacing() {
        let remote = SimpleRemoteControl()
        let light = Light(location: "Bedroom")
        let garageDoor = GarageDoor()

        let lightOnCommand = LightOnCommand(light: light)
        let garageOpenCommand = GarageDoorUpCommand(garageDoor: garageDoor)

        remote.setCommand(lightOnCommand)
        remote.buttonPressed()

        XCTAssert(light.isOn, "Light is off")

        remote.setCommand(garageOpenCommand)
        remote.buttonPressed()

        XCTAssert(garageDoor.position == .up, "Garage door is closed")
    }

    func testRemoteControl() {
        let remote = RemoteControl()

        let livingRoomLight = Light(location: "Living Room")
        let kitchenLight = Light(location: "Kitchen")
        let ceilingFan = CeilingFan(location: "Living Room")
        let garageDoor = GarageDoor()
        let stereo = Stereo(location: "Living Room")

        let livingRoomLightOn = LightOnCommand(light: livingRoomLight)
        let livingRoomLightOff = LightOffCommand(light: livingRoomLight)
        let kitchenLightOn = LightOnCommand(light: kitchenLight)
        let kitchenLightOff = LightOffCommand(light: kitchenLight)
        let ceillingFanOn = CeillingFanOnCommand(ceillingFan: ceilingFan)
        let ceillingFanOff = CeillingFanOffCommand(ceillingFan: ceilingFan)
        let garageDoorUp = GarageDoorUpCommand(garageDoor: garageDoor)
        let garageDoorDown = GarageDoorDownCommand(garageDoor: garageDoor)
        let stereoOnWithCD = StereoOnWithCDCommand(stereo: stereo)
        let stereoOff = StereoOffCommand(stereo: stereo)

        remote.setCommand(inSlot: 0, onCommand: livingRoomLightOn, offCommand: livingRoomLightOff)
        remote.setCommand(inSlot: 1, onCommand: kitchenLightOn, offCommand: kitchenLightOff)
        remote.setCommand(inSlot: 2, onCommand: ceillingFanOn, offCommand: ceillingFanOff)
        remote.setCommand(inSlot: 3, onCommand: stereoOnWithCD, offCommand: stereoOff)
        remote.setCommand(inSlot: 4, onCommand: garageDoorUp, offCommand: garageDoorDown)

        remote.onButtonPressed(inSlot: 0)
        remote.onButtonPressed(inSlot: 1)
        remote.onButtonPressed(inSlot: 2)
        remote.onButtonPressed(inSlot: 3)
        remote.onButtonPressed(inSlot: 4)

        XCTAssert(livingRoomLight.isOn, "living room light is off")
        XCTAssert(kitchenLight.isOn, "kitchen light is off")
        XCTAssert(ceilingFan.speed == .high, "Ceiling is not in high")
        XCTAssert(stereo.isOn, "stereo is off")
        XCTAssert(stereo.currentSource == .cd, "stereo source is not CD")
        XCTAssert(stereo.volume == 11, "stereo volume is not 11")
        XCTAssert(garageDoor.position == .up, "garage door is closed")

        remote.offButtonPressed(inSlot: 0)
        remote.offButtonPressed(inSlot: 1)
        remote.offButtonPressed(inSlot: 2)
        remote.offButtonPressed(inSlot: 3)
        remote.offButtonPressed(inSlot: 4)

        XCTAssertFalse(livingRoomLight.isOn, "living room light still on")
        XCTAssertFalse(kitchenLight.isOn, "kitchen light still on")
        XCTAssert(ceilingFan.speed == .off, "Ceiling is not off")
        XCTAssertFalse(stereo.isOn, "stereo still on")
        XCTAssert(garageDoor.position == .down, "garage door still open")
    }

    func testRemoteControlWithUndo() {
        let remote = RemoteControlWithUndo()

        let livingRoomLight = Light(location: "Living Room")
        let kitchenLight = Light(location: "Kitchen")

        let livingRoomLightOn = LightOnCommand(light: livingRoomLight)
        let livingRoomLightOff = LightOffCommand(light: livingRoomLight)
        let kitchenLightOn = LightOnCommand(light: kitchenLight)
        let kitchenLightOff = LightOffCommand(light: kitchenLight)

        remote.setCommand(inSlot: 0, onCommand: livingRoomLightOn, offCommand: livingRoomLightOff)
        remote.setCommand(inSlot: 1, onCommand: kitchenLightOn, offCommand: kitchenLightOff)

        remote.onButtonPressed(inSlot: 0)
        remote.onButtonPressed(inSlot: 1)

        XCTAssert(livingRoomLight.isOn, "living room light is off")
        XCTAssert(kitchenLight.isOn, "kitchen light is off")

        remote.undoButtonPressed()

        XCTAssert(livingRoomLight.isOn, "living room light is off")
        XCTAssertFalse(kitchenLight.isOn, "kitchen light still on")

        remote.onButtonPressed(inSlot: 0)
        remote.undoButtonPressed()

        XCTAssertFalse(livingRoomLight.isOn, "living room light still on")
        XCTAssertFalse(kitchenLight.isOn, "kitchen light still on")
    }

    static var allTests = [
        ("testSimpleRemoteControl", testSimpleRemoteControl),
        ("testCommandReplacing", testCommandReplacing),
        ("testRemoteControl", testRemoteControl),
        ("testRemoteControlWithUndo", testRemoteControlWithUndo),
    ]
}
