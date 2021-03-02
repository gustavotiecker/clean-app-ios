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

class SignUpComposerTests: XCTestCase {

    func test_background_request_should_complete_on_main_thread() {
        let (sut, _) = makeSut()
        sut.loadViewIfNeeded()
    }
}

extension SignUpComposerTests {
    
    func makeSut(file: StaticString = #filePath, line: UInt = #line) -> (sut: SignUpViewController, addAccountSpy: AddAccountSpy){
        let addAccountSpy = AddAccountSpy()
        let sut = SignUpComposer.composeControllerWith(addAccount: addAccountSpy)
        
        checkMemoryLeak(for: sut, file: file, line: line)
        checkMemoryLeak(for: addAccountSpy, file: file, line: line)
        
        return (sut, addAccountSpy)
    }
}
