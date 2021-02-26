//
//  AccountModel.swift
//  Domain
//
//  Created by Gustavo Tiecker on 06/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation

public struct AccountModel: Model {
    public var accessToken: String
    
    public init(accessToken: String) {
        self.accessToken = accessToken
    }
}
