//
//  RequiredFieldValidationTests.swift
//  ValidationTests
//
//  Created by Gustavo Tiecker on 12/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import XCTest
import Presentation

class RequiredFieldValidation: Validation {
    
    private let fieldName: String
    private let fieldLabel: String
    
    init(fieldName: String, fieldLabel: String) {
        self.fieldName = fieldName
        self.fieldLabel = fieldLabel
    }
    
    func validate(data: [String : Any]?) -> String? {
        guard let fieldName = data?[fieldName] as? String, !fieldName.isEmpty else {
            return "O campo \(fieldLabel) é obrigatório"
        }
        return nil
    }
}

class RequiredFieldValidationTests: XCTestCase {

    func test_validate_should_return_error_if_field_is_not_provided() {
        let sut = RequiredFieldValidation(fieldName: "email", fieldLabel: "Email")
        let errorMessage = sut.validate(data: ["name": "Pedro"])
        XCTAssertEqual(errorMessage, "O campo Email é obrigatório")
    }
    
    func test_validate_should_return_error_with_correct_field_label() {
        let sut = RequiredFieldValidation(fieldName: "age", fieldLabel: "Idade")
        let errorMessage = sut.validate(data: ["name": "Pedro"])
        XCTAssertEqual(errorMessage, "O campo Idade é obrigatório")
    }
    
    func test_validate_should_return_nil_if_field_is_provided() {
        let sut = RequiredFieldValidation(fieldName: "email", fieldLabel: "Email")
        let errorMessage = sut.validate(data: ["email": "pedro@teste.com"])
        XCTAssertNil(errorMessage)
    }
    
    func test_validate_should_return_nil_if_data_is_not_provided() {
        let sut = RequiredFieldValidation(fieldName: "email", fieldLabel: "Email")
        let errorMessage = sut.validate(data: nil)
        XCTAssertEqual(errorMessage, "O campo Email é obrigatório")
    }
}
