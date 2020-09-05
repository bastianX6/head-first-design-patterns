//
//  Tea.swift
//
//
//  Created by Bastián Véliz Vega on 19-08-20.
//

import Foundation

class Tea: CaffeineBeverage {
    override func brew() {
        self.output += "Steeping the tea\n"
    }

    override func addCondiments() {
        self.output += "Adding Lemon\n"
    }
}
