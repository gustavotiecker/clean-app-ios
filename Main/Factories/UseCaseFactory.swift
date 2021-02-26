//
//  UseCaseFactory.swift
//  Main
//
//  Created by Gustavo Tiecker on 26/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Domain
import Infra
import Data

final class UseCaseFactory {
    
    static func makeRemoteAddAccount() -> AddAccount {
        let url = URL(string: "https://fordevs.herokuapp.com/api/signup")!
        let alamofireAdapter = AlamofireAdapter()
        return RemoteAddAccount(url: url, httpClient: alamofireAdapter)
    }
}
