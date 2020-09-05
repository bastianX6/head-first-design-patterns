//
//  WeatherData.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Foundation

class WeatherData {
    private var observers: [String: Observer] = [:]
    private var temperature: Float = 0
    private var humidity: Float = 0
    private var pressure: Float = 0

    func measurementsChanged() {
        self.notifyObservers()
    }

    func setMeasurements(temperature: Float, humidity: Float, pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        self.measurementsChanged()
    }
}

extension WeatherData: Subject {
    func registerObserver(_ observer: Observer) {
        let key = String(describing: type(of: observer))
        self.observers[key] = observer
    }

    func removeObserver(_ observer: Observer) {
        let key = String(describing: type(of: observer))
        self.observers.removeValue(forKey: key)
    }

    func notifyObservers() {
        self.observers.values.forEach {
            $0.update(temperature: self.temperature,
                      humidity: self.humidity,
                      pressure: self.pressure)
        }
    }
}
