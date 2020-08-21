//
//  Iterator.swift
//
//
//  Created by Bastián Véliz Vega on 20-08-20.
//

import Foundation

protocol Iterator {
    func hasNext() -> Bool
    func next() throws -> MenuItem
}

enum IteratorError: Error {
    case noElement
}
