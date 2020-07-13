//
//  CondimentDecorator.swift
//
//
//  Created by Bastián Véliz Vega on 13-07-20.
//

import Foundation

protocol Condiment {
    var beverage: Beverage { get }
}

typealias CondimentDecorator = Beverage & Condiment
