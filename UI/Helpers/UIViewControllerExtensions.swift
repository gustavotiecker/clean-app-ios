//
//  UIViewControllerExtensions.swift
//  UI
//
//  Created by Gustavo Tiecker on 23/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func hideKeyboardOnTap() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        gesture.cancelsTouchesInView = false
        view.addGestureRecognizer(gesture)
    }
    
    @objc private func hideKeyboard() {
        view.endEditing(true)
    }
}
