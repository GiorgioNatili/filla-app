//
//  LoginConfigurator.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation

import UIKit

class LoginConfigurator {
    
    var view:LoginView
    
    init(_ view:LoginView) {
        
        // Any additional operation goes here
        self.view = view
    }
    
    func configure() {
        
        let presenter = Login()
        
        let router = LoginRouter()
        let interactor = LoginInteractor()
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        view.presenter = presenter
        interactor.presenter = presenter
    }
}