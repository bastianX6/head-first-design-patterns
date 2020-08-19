//
//  Coffee.swift
//
//
//  Created by Bastián Véliz Vega on 19-08-20.
//

import Foundation

class Coffee: CaffeineBeverage {
    override func brew() {
        self.output += "Dripping Coffee through filter\n"
    }

    override func addCondiments() {
        self.output += "Adding Sugar and Milk\n"
    }
}
