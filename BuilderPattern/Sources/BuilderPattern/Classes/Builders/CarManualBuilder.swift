//
//  CarManualBuilder.swift
//
//
//  Created by Bastián Véliz Vega on 05-09-20.
//

import Foundation

class CarManualBuilder {
    private var car: CarManual

    init() {
        self.car = CarManual()
    }
}

extension CarManualBuilder: Builder {
    func reset() {
        self.car = CarManual()
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

    func getResult() -> CarManual {
        return self.car
    }
}
