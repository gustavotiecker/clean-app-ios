//
//  HttpPostClient.swift
//  Data
//
//  Created by Gustavo Tiecker on 08/10/20.
//  Copyright © 2020 Gustavo Tiecker. All rights reserved.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (Result<Data?, HttpError>) -> Void)
}
