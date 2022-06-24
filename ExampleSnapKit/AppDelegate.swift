//
//  AppDelegate.swift
//  ExampleSnapKit
//
//  Created by Вячеслав Квашнин on 23.06.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
        let window = UIWindow()
        let vc = ViewController()
        vc.view.backgroundColor = .white
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }

}

