//
//  HttpError.swift
//  Data
//
//  Created by Gustavo Tiecker on 02/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

public enum HttpError: Error {
    case noConnection
    case badRequest
    case serverError
    case unauthorized
    case forbidden
}
