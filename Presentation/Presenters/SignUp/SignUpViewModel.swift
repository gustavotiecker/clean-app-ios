//
//  SignUpViewModel.swift
//  Presentation
//
//  Created by Gustavo Tiecker on 18/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Domain

public struct SignUpViewModel: Model {
    public var name: String?
    public var email: String?
    public var password: String?
    public var passwordConfirmation: String?
    
    public init(name: String? = nil, email: String? = nil, password: String? = nil, passwordConfirmation: String? = nil) {
        self.name = name
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
    }
    
    public func toAddAccountModel() -> AddAccountModel {
        return AddAccountModel(name: name!, email: email!, password: password!, passwordConfirmation: passwordConfirmation!)
    }
}
