//
//  Menu.swift
//
//
//  Created by Bastián Véliz Vega on 24-08-20.
//

import Foundation

class Menu: MenuComponent {
    private var menuComponents: [MenuComponent] = []

    let name: String
    let description: String
    let price: Double
    let isVegetarian: Bool

    init(name: String, description: String) {
        self.name = name
        self.description = description
        self.price = 0
        self.isVegetarian = false
    }

    func print() -> String {
        var string = "\(self.name), \(self.description)"
        string += "\n----------\n"

        var iterator = self.menuComponents.makeIterator()
        while let menuItem = iterator.next() {
            string += menuItem.print() + "\n"
        }

        return String(string.dropLast())
    }

    // MARK: Custom implementation of add, remove and getChild methods

    func add(component: MenuComponent) {
        self.menuComponents.append(component)
    }

    func remove(component: MenuComponent) {
        self.menuComponents.removeAll(where: { $0.name == component.name })
    }

    func getChild(at index: Int) -> MenuComponent {
        guard index >= 0, index < self.menuComponents.count else {
            fatalError("Index out of bounds")
        }
        return self.menuComponents[index]
    }
}
