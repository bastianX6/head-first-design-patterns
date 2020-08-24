//
//  Menu.swift
//
//
//  Created by Bastián Véliz Vega on 24-08-20.
//

import Foundation

protocol Menu: Sequence {
    func addItem(name: String,
                 description: String,
                 isVegetarian: Bool,
                 price: Double)
}
