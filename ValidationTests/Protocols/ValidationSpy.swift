//
//  ValidationSpy.swift
//  ValidationTests
//
//  Created by Gustavo Tiecker on 19/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

class ValidationSpy: Validation {
    var errorMessage: String?
    var data: [String : Any]?
    
    func validate(data: [String : Any]?) -> String? {
        self.data = data
        return errorMessage
    }
    
    func simulateError(_ errorMessage: String) {
        self.errorMessage = errorMessage
    }
}
