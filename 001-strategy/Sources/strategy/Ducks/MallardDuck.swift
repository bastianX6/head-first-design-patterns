//
//  MallardDuck.swift
//
//
//  Created by Bastián Véliz Vega on 08-07-20.
//

import Foundation

struct MallardDuck: Duck {
    var flyBehavior: FlyBehavior
    var quackBehavior: QuackBehavior

    init() {
        self.flyBehavior = FlyWithWings()
        self.quackBehavior = Quack()
    }

    func display() -> String {
        return "I'm a mallar duck"
    }
}
