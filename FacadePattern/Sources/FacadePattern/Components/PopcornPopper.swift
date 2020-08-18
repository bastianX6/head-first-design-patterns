//
//  PopcornPopper.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class PopcornPopper {
    private(set) var isOn: Bool = false
    private(set) var wasPopped = false

    // MARK: - Turn on/off

    func on() {
        self.isOn = true
    }

    func off() {
        self.isOn = false
    }

    // MARK: - Pop

    func pop() {
        self.wasPopped = true
    }
}
