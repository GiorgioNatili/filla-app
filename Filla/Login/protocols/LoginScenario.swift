//
//  LoginBehaviors.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation

protocol LoginPresenter {
    
    var view: LoginView? { get set }
    var interactor: LoginInteractorInput? { get set }
    var router: LoginRouting? { get set } 
    
    /**
     * Communication VIEW -> PRESENTER
     * (how the presenter should be known from the view)
     */
    func authenticate(username: String, password: String)
    func resetPassword(email: String)
}

protocol LoginView {
    
    var presenter: LoginPresenter? { get set }
    
    /**
     * Communication PRESENTER -> VIEW
     * (how the view should be known from the presenter)
     */
    func showErrorMessage(message: String)
    func showStatus(status: String)
    func enableInteraction(status:  Bool)
}

protocol LoginInteractorOutput {
    
    /**
     * Communication INTERACTOR -> PRESENTER
     * (completion handlers impelemented by the presenter,
     * this is how the presenter should be known from the interactor)
     */
    func loginDidSucceeded()
    func loginDidFailed(error: String)
}

protocol LoginInteractorInput {
    
     var presenter: LoginInteractorOutput? { get set }
    
    /**
     * Communication PRESENTER -> INTERACTOR
     * (how the interactor should be known from the presenter)
     */
    func aunthenticate(user: User)
    func resetPassword(email: String)
}

protocol LoginRouting {
    
    func presentDashboard()
}

