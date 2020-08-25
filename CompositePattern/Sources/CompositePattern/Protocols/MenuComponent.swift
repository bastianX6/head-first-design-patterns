//
//  MenuComponent.swift
//
//
//  Created by Bastián Véliz Vega on 24-08-20.
//

import Foundation

protocol MenuComponent {
    func add(component: MenuComponent)
    func remove(component: MenuComponent)
    func getChild(at index: Int) -> MenuComponent

    var name: String { get }
    var description: String { get }
    var isVegetarian: Bool { get }
    var price: Double { get }
    func print() -> String
}

// MARK: Default implementation of add, remove and getChild methods

extension MenuComponent {
    func add(component: MenuComponent) {}
    func remove(component: MenuComponent) {}
    func getChild(at index: Int) -> MenuComponent {
        fatalError("You should implement this method")
    }
}
