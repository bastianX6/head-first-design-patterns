//
//  MuteQuack.swift
//  
//
//  Created by Bastián Véliz Vega on 08-07-20.
//

import Foundation

struct MuteQuack: QuackBehavior {
    func quack() -> String {
        return "<< Silence >>"
    }
}
