//
//  SignUpComposer.swift
//  Main
//
//  Created by Gustavo Tiecker on 26/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Domain
import UI

public final class SignUpComposer {
    
    static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        return ControllerFactory.makeSignUp(addAccount: addAccount)
    }
}
