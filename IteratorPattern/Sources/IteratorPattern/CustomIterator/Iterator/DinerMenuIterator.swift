//
//  DinerMenuIterator.swift
//
//
//  Created by Bastián Véliz Vega on 20-08-20.
//

import Foundation

class DinerMenuIterator: Iterator {
    private var items: [Int: MenuItem]
    private var position: Int = 0

    init(items: [Int: MenuItem]) {
        self.items = items
    }

    func hasNext() -> Bool {
        guard self.position < self.items.count, self.items[self.position] != nil else {
            return false
        }

        return true
    }

    func next() throws -> MenuItem {
        guard let item = self.items[self.position] else {
            throw IteratorError.noElement
        }
        self.position += 1
        return item
    }
}
