//
//  AlertView.swift
//  Presentation
//
//  Created by Gustavo Tiecker on 16/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

public protocol AlertView {
    func showMessage(viewModel: AlertViewModel)
}

public struct AlertViewModel: Equatable {
    public var title: String
    public var message: String
    
    public init(title: String, message: String) {
        self.title = title
        self.message = message
    }
}
