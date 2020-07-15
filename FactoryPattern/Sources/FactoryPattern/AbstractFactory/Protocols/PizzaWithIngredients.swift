//
//  PizzaWithIngredients.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

protocol PizzaWithIngredients {
    var name: String { get }
    var dough: Dough? { get }
    var sauce: Sauce? { get }
    var veggies: [Veggies] { get }
    var cheese: Cheese? { get }
    var pepperoni: Pepperoni? { get }
    var clam: Clams? { get }
    var isReady: Bool { get set }

    func prepare()
    func bake()
    func cut()
    func box()
}

extension PizzaWithIngredients {
    func bake() {
        print("Bake for 25 minutes at 350")
    }

    func cut() {
        print("Cutting the pizza into diagonal slices")
    }

    func box() {
        print("Place piza in official PizzaStore box")
    }
}
