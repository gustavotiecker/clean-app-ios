//
//  AccountModel.swift
//  Domain
//
//  Created by Gustavo Tiecker on 06/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation

public struct AccountModel: Model {
    public var id: String
    public var name: String
    public var email: String
    public var password: String
    
    public init(id: String, name: String, email: String, password: String) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
    }
}
