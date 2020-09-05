//
//  CarBuilder.swift
//
//
//  Created by Bastián Véliz Vega on 04-09-20.
//

import Foundation

class CarBuilder {
    private var car: Car

    init() {
        self.car = Car()
    }
}

extension CarBuilder: Builder {
    func reset() {
        self.car = Car()
    }

    func setSeats(_ number: Int) {
        self.car.seats = number
    }

    func setEngine(_ engine: Engine) {
        self.car.engine = engine
    }

    func setTripComputer() {
        self.car.hasTripComputer = true
    }

    func setGPS() {
        self.car.hasGPS = true
    }

    func getResult() -> Car {
        return self.car
    }
}
