//
//  EmailValidation.swift
//  Validation
//
//  Created by Gustavo Tiecker on 17/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

public final class EmailValidation: Validation, Equatable {
    
    private let fieldName: String
    private let fieldLabel: String
    private let emailValidator: EmailValidator
    
    public init(fieldName: String, fieldLabel: String, emailValidator: EmailValidator) {
        self.fieldName = fieldName
        self.fieldLabel = fieldLabel
        self.emailValidator = emailValidator
    }
    
    public func validate(data: [String : Any]?) -> String? {
        guard let fieldValue = data?[fieldName] as? String, emailValidator.isValid(email: fieldValue) else {
            return "O campo \(fieldLabel) é inválido"
        }
        return nil
    }
    
    public static func == (lhs: EmailValidation, rhs: EmailValidation) -> Bool {
        return lhs.fieldLabel == rhs.fieldLabel && lhs.fieldName == rhs.fieldName
    }
}
