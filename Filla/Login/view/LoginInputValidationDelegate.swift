//
//  ValidationDelegate.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/23/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import UIKit
import SwiftValidator

protocol LoginInputValidation: ValidationDelegate {
    
    func resetErrors()
}

class LoginInputValidationDelegate:NSObject, LoginInputValidation {

    var successCallback: () -> ()
    var currentErrors:[UITextField:ValidationError]
    
    init(success: () -> ()) {
        
        self.successCallback = success
        self.currentErrors = [UITextField:ValidationError]()
    }
    
     // MARK: - LoginInputValidation implementation
    func resetErrors() {
        
        for (field, error) in currentErrors {
            
            field.layer.borderColor = UIColor.lightTextColor().CGColor
            field.layer.borderWidth = 1.0
            error.errorLabel?.text = ""
            error.errorLabel?.hidden = true
        }
        
        currentErrors = [UITextField:ValidationError]()
    }
    
    // MARK: - ValidationDelegate implementation
    func validationSuccessful() {
        
        successCallback()
    }
    
    func validationFailed(errors: [UITextField:ValidationError]) {
        
        currentErrors = errors
        
        for (field, error) in errors {
            
            field.layer.borderColor = UIColor.redColor().CGColor
            field.layer.borderWidth = 1.0
            error.errorLabel?.text = error.errorMessage // works if you added labels
            error.errorLabel?.hidden = false
        }
    }
}
