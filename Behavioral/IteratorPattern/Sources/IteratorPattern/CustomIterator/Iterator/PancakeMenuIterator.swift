//
//  PancakeMenuIterator.swift
//
//
//  Created by Bastián Véliz Vega on 20-08-20.
//

import Foundation

class PancakeMenuIterator: Iterator {
    private var items: [MenuItem]
    private var position: Int = 0

    init(items: [MenuItem]) {
        self.items = items
    }

    func hasNext() -> Bool {
        guard self.position < self.items.count else {
            return false
        }

        return true
    }

    func next() throws -> MenuItem {
        guard self.position < self.items.count else {
            throw IteratorError.noElement
        }
        let item = self.items[self.position]
        self.position += 1
        return item
    }
}
