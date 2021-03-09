//
//  Validation.swift
//  Presentation
//
//  Created by Gustavo Tiecker on 09/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

public protocol Validation {
    func validate(data: [String : Any]?) -> String?
}

