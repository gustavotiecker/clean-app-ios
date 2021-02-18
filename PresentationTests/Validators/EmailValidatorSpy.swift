//
//  EmailValidatorSpy.swift
//  PresentationTests
//
//  Created by Gustavo Tiecker on 18/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

class EmailValidatorSpy: EmailValidator {
    
    var isValid = true
    var email: String?
    
    func isValid(email: String) -> Bool {
        self.email = email
        return isValid
    }
    
    func simulateInvalidEmail() {
        isValid = false
    }
}
