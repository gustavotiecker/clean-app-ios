//
//  TestFactories.swift
//  DataTests
//
//  Created by Gustavo Tiecker on 03/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

func makeURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}
