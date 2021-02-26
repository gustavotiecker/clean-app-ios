//
//  ControllerFactory.swift
//  Main
//
//  Created by Gustavo Tiecker on 24/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import UI
import Presentation
import Validation
import Domain

class ControllerFactory {
    
    static func makeSignUp(addAccount: AddAccount) -> SignUpViewController {
        let controller = SignUpViewController.instantiate()
        let emailValidatorAdapter = EmailValidatorAdapter()
        let presenter = SignUpPresenter(alertView: WeakVarProxy(controller), emailValidator: emailValidatorAdapter, addAccount: addAccount, loadingView: WeakVarProxy(controller))
        
        controller.signUp = presenter.signUp
        
        return controller
    }
}
