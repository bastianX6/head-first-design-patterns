//
//  DinerMenu.swift
//
//
//  Created by Bastián Véliz Vega on 20-08-20.
//

import Foundation

class DinerMenu {
    private let maxItems = 6
    private var numberOfItems = 0

    // I used a dictionary to simulate the difference between java's array and arraylist
    private(set) var menuItems: [Int: MenuItem]

    init() {
        self.menuItems = [:]

        self.addItem(name: "Vegetarian BLT",
                     description: "(Fakin´) Bacon with lettuce & tomato on whole wheat",
                     isVegetarian: true,
                     price: 2.99)
        self.addItem(name: "BLT",
                     description: "Bacon with lettuce & tomato on whole wheat",
                     isVegetarian: false,
                     price: 2.99)
        self.addItem(name: "Soup of the day",
                     description: "Soup of the day, with a side of potato salad",
                     isVegetarian: true,
                     price: 3.29)
        self.addItem(name: "Hotdog",
                     description: "A hot dog, with saurkraut, relish, onions, topped with cheese",
                     isVegetarian: false,
                     price: 3.05)
    }

    func addItem(name: String,
                 description: String,
                 isVegetarian: Bool,
                 price: Double)
    {
        guard self.numberOfItems < self.maxItems else {
            print("Sorry, menu is full! Can't add item to menu")
            return
        }

        let menuItem = MenuItem(name: name,
                                description: description,
                                isVegetarian: isVegetarian,
                                price: price)
        self.menuItems[self.numberOfItems] = menuItem
        self.numberOfItems += 1
    }

    func createIterator() -> Iterator {
        return DinerMenuIterator(items: self.menuItems)
    }
}
