//
//  LoginRouter.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit

class LoginRouter: LoginRouting {
    
    var window:UIWindow
    
    init() {
        
        self.window = UIApplication.sharedApplication().delegate!.window!!
    }
    
    func presentDashboard() {
        
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let navigationController = UINavigationController()
        
//        let view = mainStoryboard.instantiateViewControllerWithIdentifier(LoginSegueIdentifier.PremiumUser) as! LandingViewController
//        
//        navigationController.pushViewController(view, animated: false)
//        window.rootViewController = navigationController
    }
}