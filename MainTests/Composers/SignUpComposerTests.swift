//
//  SignUpComposerTests.swift
//  MainTests
//
//  Created by Gustavo Tiecker on 26/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import XCTest
import Main
import UI
import Validation

class SignUpComposerTests: XCTestCase {

    func test_background_request_should_complete_on_main_thread() {
        let (sut, addAccountSpy) = makeSut()
        let exp = expectation(description: "waiting")
        
        sut.loadViewIfNeeded()
        sut.signUp?(makeSignUpViewModel())
        
        DispatchQueue.global().async {
            addAccountSpy.completeWithError(.unexpected)
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1)
    }
    
    func test_signUpCompose_with_correct_validations() {
        let validations = SignUpComposer.makeValidations()
        XCTAssertEqual(validations[0] as! RequiredFieldValidation, RequiredFieldValidation(fieldName: "name", fieldLabel: "Nome"))
        XCTAssertEqual(validations[1] as! RequiredFieldValidation, RequiredFieldValidation(fieldName: "email", fieldLabel: "Email"))
        XCTAssertEqual(validations[2] as! EmailValidation, EmailValidation(fieldName: "email", fieldLabel: "Email", emailValidator: EmailValidatorSpy()))
        XCTAssertEqual(validations[3] as! RequiredFieldValidation, RequiredFieldValidation(fieldName: "password", fieldLabel: "Senha"))
        XCTAssertEqual(validations[4] as! RequiredFieldValidation, RequiredFieldValidation(fieldName: "passwordConfirmation", fieldLabel: "Confirmar Senha"))
        XCTAssertEqual(validations[5] as! CompareFieldsValidation, CompareFieldsValidation(fieldName: "password", fieldNameToCompare: "passwordConfirmation", fieldLabel: "Confirmar Senha"))
    }
}

extension SignUpComposerTests {
    
    func makeSut(file: StaticString = #filePath, line: UInt = #line) -> (sut: SignUpViewController, addAccountSpy: AddAccountSpy){
        let addAccountSpy = AddAccountSpy()
        let sut = SignUpComposer.composeControllerWith(addAccount: MainQueueDispatchDecorator(addAccountSpy))
        
        checkMemoryLeak(for: sut, file: file, line: line)
        checkMemoryLeak(for: addAccountSpy, file: file, line: line)
        
        return (sut, addAccountSpy)
    }
}
