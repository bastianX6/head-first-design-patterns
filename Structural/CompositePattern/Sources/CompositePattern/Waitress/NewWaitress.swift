//
//  NewWaitress.swift
//
//
//  Created by Bastián Véliz Vega on 24-08-20.
//

import Foundation

struct NewWaitress: Waitress {
    private let allMenus: MenuComponent

    init(allMenus: MenuComponent) {
        self.allMenus = allMenus
    }

    func printMenu() -> String {
        return self.allMenus.print()
    }
}
