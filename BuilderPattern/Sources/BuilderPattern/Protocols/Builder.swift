//
//  Builder.swift
//
//
//  Created by Bastián Véliz Vega on 04-09-20.
//

import Foundation

protocol Builder {
    func reset()
    func setSeats(_ number: Int)
    func setEngine(_ engine: Engine)
    func setTripComputer()
    func setGPS()
}
