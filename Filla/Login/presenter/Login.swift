//
//  LoginPresenter.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation

class Login:LoginPresenter, LoginInteractorOutput {
    
    var view: LoginView?
    var router: LoginRouting?
    var interactor: LoginInteractorInput? 
    
    init() {
        
        
    }
    
    // MARK: LoginInteractorOutput implementation
    func loginDidSucceeded() {
        
        router?.presentDashboard()
    }
    
    func loginDidFailed(error: String) {
        
        view?.showErrorMessage(error)
    }
    
    // MARK: LoginPresenter implementation
    func authenticate(username: String, password: String) {
        
    }
    
    func resetPassword(email: String) {
        
        
    }
}