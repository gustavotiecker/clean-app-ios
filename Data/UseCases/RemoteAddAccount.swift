//
//  RemoteAddAccount.swift
//  Data
//
//  Created by Gustavo Tiecker on 08/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Domain

public final class RemoteAddAccount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    public init(url: URL, httpClient: HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    public func add(addAccountModel: AddAccountModel) {
        httpClient.post(to: url, with: addAccountModel.toData())
    }
}
