//
//  PancakeHouseMenu.swift
//
//
//  Created by Bastián Véliz Vega on 20-08-20.
//

import Foundation

class PancakeHouseMenu {
    private var menuItems: [MenuItem]

    init() {
        self.menuItems = []
        self.addItem(name: "K&B's Pancake Breakfast",
                     description: "Pancakes with scrambled eggs, and toast",
                     isVegetarian: true,
                     price: 2.99)
        self.addItem(name: "Regular Pancake Breakfast",
                     description: "Pancake with fried eggs, sausage",
                     isVegetarian: false,
                     price: 2.99)
        self.addItem(name: "Blueberry Pancakes",
                     description: "Pancakes made with fresh blueberries",
                     isVegetarian: true,
                     price: 3.49)
        self.addItem(name: "Wafles",
                     description: "Wafles, with your choise of blueberries or strawberries",
                     isVegetarian: true,
                     price: 3.59)
    }

    func addItem(name: String,
                 description: String,
                 isVegetarian: Bool,
                 price: Double)
    {
        let menuItem = MenuItem(name: name,
                                description: description,
                                isVegetarian: isVegetarian,
                                price: price)
        self.menuItems.append(menuItem)
    }

    func createIterator() -> Iterator {
        return PancakeMenuIterator(items: self.menuItems)
    }
}
