//
//  LoadingViewSpy.swift
//  PresentationTests
//
//  Created by Gustavo Tiecker on 18/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import Presentation

class LoadingViewSpy: LoadingView {
    
    var emit: ((LoadingViewModel) -> Void)?
    
    func observe(completion: @escaping (LoadingViewModel) -> Void) {
        self.emit = completion
    }
    
    func display(viewModel: LoadingViewModel) {
        self.emit?(viewModel)
    }
}
