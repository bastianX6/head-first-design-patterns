//
//  Screen.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class Screen {
    private(set) var screenPosition: ScreenPosition = .down

    func up() {
        self.screenPosition = .up
    }

    func down() {
        self.screenPosition = .down
    }
}

enum ScreenPosition {
    case up
    case down
}
