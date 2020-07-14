//
//  Pizza.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

protocol Pizza {
    var name: String { get }
    var dough: String { get }
    var sauce: String { get }
    var toppings: [String] { get }
    var isReady: Bool { get set }
    func prepare()
    func bake()
    func cut()
    func box()
}

extension Pizza {
    func prepare() {
        print("Preparing \(self.name)")
        print("Tossing dough...")
        print("Adding sauce...")
        print("Adding toppings")
        self.toppings.forEach {
            print("    \($0)")
        }
    }

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
