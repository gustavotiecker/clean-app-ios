//
//  AddAccountIntegrationTests.swift
//  AddAccountIntegrationTests
//
//  Created by Gustavo Tiecker on 17/05/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import XCTest
import Data
import Infra
import Domain

class AddAccountIntegrationTests: XCTestCase {
    
    func test_add_account() {
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://fordevs.herokuapp.com/api/signup")!
        let sut = RemoteAddAccount(url: url, httpClient: alamofireAdapter)
        let addAccountModel = AddAccountModel(name: "Gustavo", email: "gustavo@mail.com", password: "secret", passwordConfirmation: "secret")
        let exp = expectation(description: "waiting")
        
        sut.add(addAccountModel: addAccountModel) { result in
            switch result {
            case .failure: XCTFail("Expect success, got \(result) instead")
            case .success (let account):
                XCTAssertNotNil(account.accessToken)
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
}
