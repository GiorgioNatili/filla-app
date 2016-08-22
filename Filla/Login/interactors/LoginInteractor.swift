//
//  LoginInteractorInput.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorInput {
    
    var presenter: LoginInteractorOutput?
    var services:LoginManager
    
    init(){
        
        services = AuthenticationManager()
    }

    // MARK: LoginInteractorInput implementation
    func aunthenticate(user: User) {
        
        services.auhtenticate(user)
    }
    
    func resetPassword(email: String) {
        
        
    }
}
