//
//  ChicagoStyleCheesePizza.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

class ChicagoStyleCheesePizza: Pizza {
    let name: String = "Chicago Style DeepDish Cheese Pizza"
    let dough: String = "Extra Thick Crust Dough"
    let sauce: String = "Plum Tomato Sauce"
    let toppings: [String] = ["Shredded Mozzarella Cheese"]
    var isReady: Bool = false

    func cut() {
        print("Cutting the pizza into square slices")
    }
}
