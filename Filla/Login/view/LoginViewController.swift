//
//  LoginViewController.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginView, LoginSegueHandler {

    var presenter: LoginPresenter?
    
    enum LoginSegueIdentifiers: String {
        
        case NormalUser
        case PremiumUser
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let configurator = LoginConfigurator(self)
        configurator.configure()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // 🎉 goodbye pyramid of doom!
        switch segueIdentifierForSegue(segue) {
            
        case .NormalUser:
            print("😈")
        case .PremiumUser:
            print("👼")
        }
        
        presenter?.router?.presentDashboard()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: LoginView implementation
    func showErrorMessage(message: String) {
        
    }
    
    func showStatus(status: String) {
        
    }
    
    func enableInteraction(status:  Bool) {
        
    }

}
