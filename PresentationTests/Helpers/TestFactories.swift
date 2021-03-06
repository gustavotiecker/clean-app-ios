//
//  TestFactories.swift
//  PresentationTests
//
//  Created by Gustavo Tiecker on 18/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

func makeSignUpViewModel(name: String? = "any_name", email: String? = "any_email@mail.com", password: String? = "any_password", passwordConfirmation: String? = "any_password") -> SignUpViewModel {
    return SignUpViewModel(name: name, email: email, password: password, passwordConfirmation: passwordConfirmation)
}
