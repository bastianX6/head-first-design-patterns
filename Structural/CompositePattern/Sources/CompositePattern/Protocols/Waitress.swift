//
//  Waitress.swift
//
//
//  Created by Bastián Véliz Vega on 24-08-20.
//

import Foundation

protocol Waitress {
    init(allMenus: MenuComponent)
    func printMenu() -> String
}
