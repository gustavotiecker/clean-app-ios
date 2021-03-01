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
    
    private static let httpClient = AlamofireAdapter()
    private static let apiBaseUrl = Environment.variable(.apiBaseUrl)
    
    private static func makeUrl(path: String) ->  URL {
        return URL(string: "\(apiBaseUrl)/\(path)")!
    }
    
    static func makeRemoteAddAccount() -> AddAccount {
        return RemoteAddAccount(url: makeUrl(path: "signup"), httpClient: httpClient)
    }
}
