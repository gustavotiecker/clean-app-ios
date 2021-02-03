//
//  Model.swift
//  Domain
//
//  Created by Gustavo Tiecker on 08/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation

public protocol Model: Codable, Equatable {}

public extension Model {
    
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
