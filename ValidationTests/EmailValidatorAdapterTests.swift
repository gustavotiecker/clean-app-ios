//
//  EmailValidatorAdapterTests.swift
//  EmailValidatorAdapterTests
//
//  Created by Gustavo Tiecker on 24/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import XCTest
import Presentation

public class EmailValidatorAdapter: EmailValidator {
    
    private let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    public func isValid(email: String) -> Bool {
        let range = NSRange(location: 0, length: email.utf16.count)
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.firstMatch(in: email, options: [], range: range) != nil
    }
}

class EmailValidatorAdapterTests: XCTestCase {
    
    func test_invalid_emails() {
        let sut = EmailValidatorAdapter()
        XCTAssertFalse(sut.isValid(email: "user"))
        XCTAssertFalse(sut.isValid(email: "user@"))
        XCTAssertFalse(sut.isValid(email: "user@example"))
        XCTAssertFalse(sut.isValid(email: "user@example."))
        XCTAssertFalse(sut.isValid(email: "@example.com"))
    }
    
    func test_valid_emails() {
        let sut = EmailValidatorAdapter()
        XCTAssertTrue(sut.isValid(email: "user@example.com"))
        XCTAssertTrue(sut.isValid(email: "user@example.com.br"))
    }
}
