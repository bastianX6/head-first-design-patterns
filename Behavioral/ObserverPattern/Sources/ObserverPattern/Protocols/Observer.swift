//
//  Observer.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Foundation

protocol Observer {
    var subject: Subject { get }
    func update(temperature: Float, humidity: Float, pressure: Float)
}
