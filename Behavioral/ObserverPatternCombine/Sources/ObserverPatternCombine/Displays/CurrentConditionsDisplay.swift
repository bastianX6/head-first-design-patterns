//
//  CurrentConditionsDisplay.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Combine
import Foundation

@available(OSX 10.15, *, iOS 13.0, *)
class CurrentConditionsDisplay: Subscriber {
    typealias Input = WeatherItem
    typealias Failure = Never

    var temperature: Float = 0
    var humidity: Float = 0
    var subscription: Subscription?

    func receive(subscription: Subscription) {
        self.subscription = subscription
        subscription.request(.unlimited)
    }

    func receive(_ input: WeatherItem) -> Subscribers.Demand {
        self.temperature = input.temperature
        self.humidity = input.humidity
        self.display()
        return .unlimited
    }

    func receive(completion _: Subscribers.Completion<Never>) {
        print("CurrentConditionsDisplay done")
    }
}

@available(OSX 10.15, *, iOS 13.0, *)
extension CurrentConditionsDisplay: Displayable {
    @discardableResult
    func display() -> String {
        let string = "Current conditions: \(self.temperature) ºC degrees and \(self.humidity) % humidity"
        print(string)
        return string
    }
}
