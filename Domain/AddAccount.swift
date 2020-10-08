//
//  AddAccount.swift
//  Domain
//
//  Created by Gustavo Tiecker on 06/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation

public protocol AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

public struct AddAccountModel {
    public var name: String
    public var email: String
    public var password: String
    public var passwordConfirmation: String
}
