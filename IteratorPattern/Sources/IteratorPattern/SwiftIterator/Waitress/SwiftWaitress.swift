//
//  SwiftWaitress.swift
//
//
//  Created by Bastián Véliz Vega on 21-08-20.
//

import Foundation

class SwiftWaitress<GenericPancakeMenu: Menu, GenericDinerMenu: Menu>: Waitress
    where GenericPancakeMenu.Element == MenuItem, GenericDinerMenu.Element == MenuItem
{
    private(set) var output: String = ""

    private let pacakeHouseMenu: GenericPancakeMenu
    private let dinerMenu: GenericDinerMenu

    init(pacakeHouseMenu: GenericPancakeMenu, dinerMenu: GenericDinerMenu) {
        self.pacakeHouseMenu = pacakeHouseMenu
        self.dinerMenu = dinerMenu
    }

    func printMenu() {
        let pancakeIterator = self.pacakeHouseMenu.makeIterator()
        let dinerIterator = self.dinerMenu.makeIterator()

        self.output += "MENU\n----\nBREAKFAST\n"
        self.printMenu(iterator: pancakeIterator)
        self.output += "\n\nLUNCH\n"
        self.printMenu(iterator: dinerIterator)
        self.output = String(self.output.dropLast())
        print(self.output.dropLast())
    }

    private func resetOutput() {
        self.output = ""
    }

    private func printMenu<MenuIterator: IteratorProtocol>(iterator: MenuIterator) where MenuIterator.Element == MenuItem {
        var iterator = iterator
        while let element = iterator.next() {
            self.output += "\(element.name), \(element.price) -- \(element.description)\n"
        }
    }
}
