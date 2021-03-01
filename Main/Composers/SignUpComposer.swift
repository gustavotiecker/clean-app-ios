//
//  SignUpComposer.swift
//  Main
//
//  Created by Gustavo Tiecker on 26/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import UI
import Presentation
import Validation
import Domain

public final class SignUpComposer {
    
    public static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        let controller = SignUpViewController.instantiate()
        let emailValidatorAdapter = EmailValidatorAdapter()
        let presenter = SignUpPresenter(alertView: WeakVarProxy(controller), emailValidator: emailValidatorAdapter, addAccount: addAccount, loadingView: WeakVarProxy(controller))
        
        controller.signUp = presenter.signUp
        
        return controller
    }
}
