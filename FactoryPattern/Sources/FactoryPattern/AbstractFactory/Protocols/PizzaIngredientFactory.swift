//
//  PizzaIngredientFactory.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Veggies]
    func createPepperoni() -> Pepperoni
    func createClam() -> Clams
}
