//
//  StatisticsDisplay.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Foundation

class StatisticsDisplay: Observer {
    var minTemperature: Float = Float.infinity
    var maxTemperature: Float = Float.infinity
    var averageTemperature: Float = Float.infinity
    var numberOfRegisters: Int = 0
    var accumulatedTemperature: Float = 0
    var subject: Subject

    init(subject: Subject) {
        self.subject = subject
        self.subject.registerObserver(self)
    }

    func update(temperature: Float, humidity _: Float, pressure _: Float) {
        self.updateMinTemperature(with: temperature)
        self.updateMaxTemperature(with: temperature)
        self.updateAverageTemperature(with: temperature)
        self.display()
    }

    private func updateMinTemperature(with value: Float) {
        if self.minTemperature == Float.infinity {
            self.minTemperature = value
        } else if value < self.minTemperature {
            self.minTemperature = value
        }
    }

    private func updateMaxTemperature(with value: Float) {
        if self.maxTemperature == Float.infinity {
            self.maxTemperature = value
        } else if value > self.maxTemperature {
            self.maxTemperature = value
        }
    }

    private func updateAverageTemperature(with value: Float) {
        self.numberOfRegisters += 1
        self.accumulatedTemperature += value
        self.averageTemperature = self.accumulatedTemperature / Float(self.numberOfRegisters)
    }
}

extension StatisticsDisplay: Displayable {
    @discardableResult
    func display() -> String {
        let string = String(format: "Avg/Max/Min temperature: %.2f/%.2f/%.2f", self.averageTemperature, self.maxTemperature, self.minTemperature)
        print(string)
        return string
    }
}
