//
//  SegueHandler+Extension.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit

extension LoginSegueHandler where Self: UIViewController, LoginSegueIdentifiers.RawValue == String {
    
    func performSegueWithIdentifier(segueIdentifier: LoginSegueIdentifiers, sender: AnyObject?) {
            
        performSegueWithIdentifier(segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> LoginSegueIdentifiers {
        
        // still have to use guard stuff here, but at least you're
        // extracting it this time
        guard let identifier = segue.identifier,
            segueIdentifier = LoginSegueIdentifiers(rawValue: identifier) else {
                
                fatalError("Invalid segue identifier \(segue.identifier).")
        }
        
        return segueIdentifier
    }
}