//
//  APPCordinator.swift
//  MVVM
//
//  Created by Mohamed osama on 18/11/2021.
//

import UIKit


class APPCordinator{
    
    private var window: UIWindow
    
    init(_ window: UIWindow){
        self.window = window
    }
    
    func start(){
        let navVC = UINavigationController(rootViewController: ViewController.generateController())
        window.rootViewController = navVC
        window.makeKey()
        window.makeKeyAndVisible()
    }
}
