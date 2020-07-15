//
//  CheesePizza.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

class CheesePizza: PizzaWithIngredients {
    var name: String
    var dough: Dough?
    var sauce: Sauce?
    var veggies: [Veggies] = []
    var cheese: Cheese?
    var pepperoni: Pepperoni?
    var clam: Clams?
    var isReady: Bool = false

    var ingredientsFactory: PizzaIngredientFactory

    init(name: String, ingredientsFactory: PizzaIngredientFactory) {
        self.name = name
        self.ingredientsFactory = ingredientsFactory
    }

    func prepare() {
        print("Preparing \(self.name)")
        self.dough = self.ingredientsFactory.createDough()
        self.sauce = self.ingredientsFactory.createSauce()
        self.cheese = self.ingredientsFactory.createCheese()
        self.isReady = true
    }
}
