//
//  PizzaFactory.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

protocol PizzaFactory {
    func createPizza(ofType type: String) -> Pizza?
}
