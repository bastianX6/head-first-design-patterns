//
//  SimpleCheesePizza.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

class SimpleCheesePizza: Pizza {
    let name: String = "Simple Cheese Pizza"
    let dough: String = "Normal Dough"
    let sauce: String = "Regular Sauce"
    let toppings: [String] = ["Cheese", "More Cheese", "And more cheese"]
    var isReady: Bool = false
}
