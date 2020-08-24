//
//  SwiftDinerMenuIterator.swift
//
//
//  Created by Bastián Véliz Vega on 21-08-20.
//

import Foundation

struct SwiftDinerMenuIterator: IteratorProtocol {
    private var items: [Int: MenuItem]
    private var position: Int = 0

    init(items: [Int: MenuItem]) {
        self.items = items
    }

    mutating func next() -> MenuItem? {
        guard let item = self.items[self.position] else {
            return nil
        }
        self.position += 1
        return item
    }
}
