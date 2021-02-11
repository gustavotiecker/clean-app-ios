//
//  HttpClientSpy.swift
//  DataTests
//
//  Created by Gustavo Tiecker on 03/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Data

class HttpClientSpy: HttpPostClient {
    var urls = [URL]()
    var data: Data?
    var completion: ((Result<Data?, HttpError>) -> Void)?
    
    func post(to url: URL, with data: Data?, completion: @escaping (Result<Data?, HttpError>) -> Void) {
        self.urls.append(url)
        self.data = data
        self.completion = completion
    }
    
    func completedWithError(_ error: HttpError) {
        completion?(.failure(error))
    }
    
    func completedWithData(_ data: Data) {
        completion?(.success(data))
    }
}
