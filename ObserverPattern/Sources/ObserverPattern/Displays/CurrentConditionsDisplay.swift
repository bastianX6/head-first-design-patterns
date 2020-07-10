//
//  CurrentConditionsDisplay.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Foundation

class CurrentConditionsDisplay: Observer {
    var temperature: Float = 0
    var humidity: Float = 0
    var subject: Subject

    init(subject: Subject) {
        self.subject = subject
        self.subject.registerObserver(self)
    }

    func update(temperature: Float, humidity: Float, pressure _: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.display()
    }
}

extension CurrentConditionsDisplay: Displayable {
    @discardableResult
    func display() -> String {
        let string = "Current conditions: \(self.temperature) ºC degrees and \(self.humidity) % humidity"
        print(string)
        return string
    }
}
