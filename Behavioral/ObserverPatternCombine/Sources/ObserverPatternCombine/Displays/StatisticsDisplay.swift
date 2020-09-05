//
//  StatisticsDisplay.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Combine
import Foundation

@available(OSX 10.15, *, iOS 13.0, *)
class StatisticsDisplay: Subscriber {
    typealias Input = WeatherItem
    typealias Failure = Never

    var minTemperature: Float = Float.infinity
    var maxTemperature: Float = Float.infinity
    var averageTemperature: Float = Float.infinity
    var numberOfRegisters: Int = 0
    var accumulatedTemperature: Float = 0
    var subscription: Subscription?

    func receive(subscription: Subscription) {
        self.subscription = subscription
        subscription.request(.unlimited)
    }

    func receive(_ input: WeatherItem) -> Subscribers.Demand {
        let temperature = input.temperature
        self.updateMinTemperature(with: temperature)
        self.updateMaxTemperature(with: temperature)
        self.updateAverageTemperature(with: temperature)
        self.display()
        return .unlimited
    }

    func receive(completion _: Subscribers.Completion<Never>) {
        print("StatisticsDisplay done")
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

@available(OSX 10.15, *, iOS 13.0, *)
extension StatisticsDisplay: Displayable {
    @discardableResult
    func display() -> String {
        let string = String(format: "Avg/Max/Min temperature: %.2f/%.2f/%.2f", self.averageTemperature, self.maxTemperature, self.minTemperature)
        print(string)
        return string
    }
}
