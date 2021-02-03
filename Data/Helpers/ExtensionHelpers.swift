//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Gustavo Tiecker on 03/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

public extension Data {
    
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}
