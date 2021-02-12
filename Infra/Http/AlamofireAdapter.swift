//
//  AlamofireAdapter.swift
//  Infra
//
//  Created by Gustavo Tiecker on 12/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Alamofire
import Data

public final class AlamofireAdapter: HttpPostClient {
    
    private let session: Session
    
    public init(session: Session = .default) {
        self.session = session
    }
    
    public func post(to url: URL, with data: Data?, completion: @escaping (Result<Data?, HttpError>) -> Void) {
        session.request(url, method: .post, parameters: data?.toJson(), encoding: JSONEncoding.default).responseData { dataResponse in
            guard let statusCode = dataResponse.response?.statusCode else {
                return completion(.failure(.noConnection))
            }
            switch dataResponse.result {
            case .failure(_): completion(.failure(.noConnection))
            case .success(let data):
                switch statusCode {
                case 204:
                    completion(.success(nil))
                case 200...299:
                    completion(.success(data))
                case 401:
                    completion(.failure(.unauthorized))
                case 403:
                    completion(.failure(.forbidden))
                case 400...499:
                    completion(.failure(.badRequest))
                case 500...599:
                    completion(.failure(.serverError))
                default:
                    completion(.failure(.noConnection))
                }
                
            }
        }
    }
}
