//
//  MenuItem.swift
//
//
//  Created by Bastián Véliz Vega on 24-08-20.
//

import Foundation

struct MenuItem: MenuComponent {
    let name: String
    let description: String
    let isVegetarian: Bool
    let price: Double

    func print() -> String {
        var string = "\(self.name)"
        if self.isVegetarian {
            string += "(v)"
        }
        string += ", \(self.price)\n-- \(self.description)\n"
        return String(string.dropLast())
    }
}
