//
//  PancakeHouseMenu+Iterator.swift
//
//
//  Created by Bastián Véliz Vega on 21-08-20.
//

import Foundation

extension PancakeHouseMenu: Menu {
    func makeIterator() -> IndexingIterator<[MenuItem]> {
        return self.menuItems.makeIterator()
    }
}
