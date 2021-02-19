//
//  UITests.swift
//  UITests
//
//  Created by Gustavo Tiecker on 19/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import XCTest
import UIKit
@testable import UI

class UITests: XCTestCase {
    
    func test_loading_view_is_hidden_on_start() {
        let sb = UIStoryboard(name: "SignUp", bundle: Bundle(for: SignUpViewController.self))
        let sut = sb.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.loadingIndicator?.isAnimating, false)
    }
}
