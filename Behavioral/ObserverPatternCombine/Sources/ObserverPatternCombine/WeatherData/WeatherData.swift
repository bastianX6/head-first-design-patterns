//
//  WeatherData.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Combine
import Foundation

@available(OSX 10.15, *, iOS 13.0, *)
class WeatherData {
    private var subject = PassthroughSubject<WeatherItem, Never>()
    private var currentItem: WeatherItem

    init() {
        self.currentItem = WeatherItem(temperature: 0, humidity: 0, pressure: 0)
    }

    func setMeasurements(temperature: Float, humidity: Float, pressure: Float) {
        let item = WeatherItem(temperature: temperature, humidity: humidity, pressure: pressure)
        self.subject.send(item)
    }

    func subscribe(_ subscriber: AnySubscriber<WeatherItem, Never>) {
        self.subject.subscribe(subscriber)
    }
}
