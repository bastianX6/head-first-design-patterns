//
//  TurkeyAdapter.swift
//
//
//  Created by Bastián Véliz Vega on 05-08-20.
//

import Foundation

class TurkeyAdapter: Duck {
    private let turkey: Turkey

    init(turkey: Turkey) {
        self.turkey = turkey
    }

    func quack() -> String {
        return self.turkey.gobble()
    }

    func fly() -> String {
        var str = ""
        for _ in 0 ..< 5 {
            str += "\(self.turkey.fly())\n"
        }
        return str
    }
}
