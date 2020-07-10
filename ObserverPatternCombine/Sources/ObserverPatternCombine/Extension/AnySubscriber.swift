//
//  File.swift
//
//
//  Created by Bastián Véliz Vega on 10-07-20.
//

import Combine

@available(OSX 10.15, *, iOS 13.0, *)
extension Subscriber where Input == WeatherItem, Failure == Never {
    func eraseToAnySubscriber() -> AnySubscriber<WeatherItem, Never> {
        return AnySubscriber(self)
    }
}
