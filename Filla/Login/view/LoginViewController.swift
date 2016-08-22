//
//  LoginViewController.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import UIKit
import TTTAttributedLabel

class LoginViewController: UIViewController, LoginView, LoginSegueHandler {

    // MARK: UI items
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var resetPassword: TTTAttributedLabel!
    @IBOutlet weak var login: UIButton!
   
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
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        updateContent()
        configureForgotPassword()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Private methods
    func updateContent() {
        
        usernameLabel.text = "LOGIN".localized
        passwordLabel.text = "PASSWORD".localized
        resetPassword.text = "RESET_PASSWORD".localized
        
        login.setTitle("LOGIN".localized, forState: .Normal)
    }
    
    func configureForgotPassword() {
        
        let tap = UITapGestureRecognizer(target: self, action: Selector("doResetPassword:"))
        resetPassword.addGestureRecognizer(tap)
    }
    
    // MARK: User interaction
    @IBAction func doLogin(sender: AnyObject) {
        
        
    }
    
    func doResetPassword(sender:UITapGestureRecognizer) {
     
        print("👲👲")
    }
    
    // MARK: LoginSegueHandler implementation
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
