//
//  Command.swift
//  
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

protocol Command {
    func execute()
    func undo()
}
