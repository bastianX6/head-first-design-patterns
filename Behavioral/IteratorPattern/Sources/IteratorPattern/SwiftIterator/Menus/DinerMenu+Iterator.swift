//
//  DinerMenu+Iterator.swift
//
//
//  Created by Bastián Véliz Vega on 21-08-20.
//

import Foundation

extension DinerMenu: Menu {
    func makeIterator() -> SwiftDinerMenuIterator {
        SwiftDinerMenuIterator(items: self.menuItems)
    }
}
