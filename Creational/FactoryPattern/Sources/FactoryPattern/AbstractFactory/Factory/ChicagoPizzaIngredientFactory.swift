//
//  ChicagoPizzaIngredientFactory.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

class ChicagoPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThickCrustDough()
    }

    func createSauce() -> Sauce {
        return PlumTomatoSauce()
    }

    func createCheese() -> Cheese {
        return MozzarellaCheese()
    }

    func createVeggies() -> [Veggies] {
        return [BlackOlives(), Spinach(), EggPlant()]
    }

    func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }

    func createClam() -> Clams {
        return FrozenClam()
    }
}
