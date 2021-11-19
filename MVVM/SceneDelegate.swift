//
//  SceneDelegate.swift
//  MVVM
//
//  Created by Mohamed osama on 18/11/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var appCordinator: APPCordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        appCordinator = APPCordinator(window)
        appCordinator?.start()
        
    }

 

}

