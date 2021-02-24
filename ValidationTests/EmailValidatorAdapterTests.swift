//
//  EmailValidatorAdapterTests.swift
//  EmailValidatorAdapterTests
//
//  Created by Gustavo Tiecker on 24/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import XCTest
import Presentation
import Validation

class EmailValidatorAdapterTests: XCTestCase {
    
    func test_invalid_emails() {
        let sut = makeSut()
        XCTAssertFalse(sut.isValid(email: "user"))
        XCTAssertFalse(sut.isValid(email: "user@"))
        XCTAssertFalse(sut.isValid(email: "user@example"))
        XCTAssertFalse(sut.isValid(email: "user@example."))
        XCTAssertFalse(sut.isValid(email: "@example.com"))
    }
    
    func test_valid_emails() {
        let sut = makeSut()
        XCTAssertTrue(sut.isValid(email: "user@example.com"))
        XCTAssertTrue(sut.isValid(email: "user@example.com.br"))
    }
}

extension EmailValidatorAdapterTests {
    
    func makeSut() -> EmailValidatorAdapter {
        return EmailValidatorAdapter()
    }
}
