//
//  EmailValidator.swift
//  Presentation
//
//  Created by Gustavo Tiecker on 16/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

public protocol EmailValidator {
    func isValid(email: String) -> Bool
}
