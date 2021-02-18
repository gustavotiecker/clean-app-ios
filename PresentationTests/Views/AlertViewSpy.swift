//
//  AlertViewSpy.swift
//  PresentationTests
//
//  Created by Gustavo Tiecker on 18/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

class AlertViewSpy: AlertView {
    
    var emit: ((AlertViewModel) -> Void)?
    
    func observe(completion: @escaping (AlertViewModel) -> Void) {
        self.emit = completion
    }
    
    func showMessage(viewModel: AlertViewModel) {
        self.emit?(viewModel)
    }
}
