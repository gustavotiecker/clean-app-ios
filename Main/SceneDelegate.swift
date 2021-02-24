//
//  SceneDelegate.swift
//  Main
//
//  Created by Gustavo Tiecker on 24/02/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = SignUpFactory.makeController()
        window?.makeKeyAndVisible()
    }
}
