//
//  AddAccount.swift
//  Domain
//
//  Created by Gustavo Tiecker on 06/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation

protocol AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}
