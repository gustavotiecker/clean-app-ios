//
//  ValidationComposite.swift
//  Validation
//
//  Created by Gustavo Tiecker on 19/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

public final class ValidationComposite: Validation {
    private let validations: [Validation]
    
    public init(validations: [Validation]) {
        self.validations = validations
    }
    
    public func validate(data: [String : Any]?) -> String? {
        for validation in validations {
            if let  errorMessage = validation.validate(data: data) {
                return errorMessage
            }
        }
        return nil
    }
}
