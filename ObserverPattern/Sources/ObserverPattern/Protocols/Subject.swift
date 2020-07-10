//
//  Subject.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Foundation

protocol Subject {
    func registerObserver(_ observer: Observer)
    func removeObserver(_ observer: Observer)
    func notifyObservers()
}
