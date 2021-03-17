//
//  CompareFieldsValidation.swift
//  Validation
//
//  Created by Gustavo Tiecker on 16/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

public final class CompareFieldsValidation: Validation {
    
    private let fieldName: String
    private let fieldNameToCompare: String
    private let fieldLabel: String
    
    public init(fieldName: String, fieldNameToCompare: String, fieldLabel: String) {
        self.fieldName = fieldName
        self.fieldNameToCompare = fieldNameToCompare
        self.fieldLabel = fieldLabel
    }
    
    public func validate(data: [String : Any]?) -> String? {
        guard let fieldName = data?[fieldName] as? String, let fieldNameToCompare = data?[fieldNameToCompare] as? String, fieldName == fieldNameToCompare else {
            return "O campo \(fieldLabel) é inválido"
        }
        return nil
    }
}
