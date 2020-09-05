//
//  Duck.swift
//
//
//  Created by Bastián Véliz Vega on 08-07-20.
//

import Foundation

protocol Duck {
    var flyBehavior: FlyBehavior { get }
    var quackBehavior: QuackBehavior { get }

    func display() -> String
    func swim() -> String
    func performFly() -> String
    func performQuack() -> String
}

extension Duck {
    func performFly() -> String {
        return self.flyBehavior.fly()
    }

    func performQuack() -> String {
        return self.quackBehavior.quack()
    }

    func swim() -> String {
        return "All ducks float, even decoys!"
    }
}
