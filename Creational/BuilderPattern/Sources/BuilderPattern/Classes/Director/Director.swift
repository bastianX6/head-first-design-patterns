//
//  Director.swift
//
//
//  Created by Bastián Véliz Vega on 04-09-20.
//

import Foundation

enum Director {
    static func makeSUV(builder: Builder) {
        builder.reset()
        builder.setSeats(6)
        builder.setEngine(.default)
        builder.setGPS()
    }

    static func makeSportCar(builder: Builder) {
        builder.reset()
        builder.setSeats(2)
        builder.setEngine(.sport)
        builder.setTripComputer()
        builder.setGPS()
    }
}
