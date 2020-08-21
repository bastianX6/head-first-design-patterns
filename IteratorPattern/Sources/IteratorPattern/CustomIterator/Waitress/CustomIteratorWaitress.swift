//
//  CustomIteratorWaitress.swift
//
//
//  Created by Bastián Véliz Vega on 20-08-20.
//

import Foundation

class CustomIteratorWaitress: Waitress {
    private(set) var output: String = ""

    private let pacakeHouseMenu: PancakeHouseMenu
    private let dinerMenu: DinerMenu

    init(pacakeHouseMenu: PancakeHouseMenu, dinerMenu: DinerMenu) {
        self.pacakeHouseMenu = pacakeHouseMenu
        self.dinerMenu = dinerMenu
    }

    func printMenu() {
        let pancakeIterator = self.pacakeHouseMenu.createIterator()
        let dinerIterator = self.dinerMenu.createIterator()
        self.output += "MENU\n----\nBREAKFAST\n"
        self.printMenu(iterator: pancakeIterator)
        self.output += "\n\nLUNCH\n"
        self.printMenu(iterator: dinerIterator)
        print(self.output)
    }

    private func resetOutput() {
        self.output = ""
    }

    private func printMenu(iterator: Iterator) {
        while iterator.hasNext() {
            guard let element = try? iterator.next() else {
                continue
            }
            self.output += "\(element.name), \(element.price) -- \(element.description)"
            if iterator.hasNext() {
                self.output += "\n"
            }
        }
    }
}
