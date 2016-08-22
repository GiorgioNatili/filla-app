//
//  SegueHandler+Extension.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation
import UIKit

extension LoginSegueIdentifier where Self: UIViewController, SegueIdentifier.RawValue == String {
    
    func performSegueWithIdentifier(segueIdentifier: SegueIdentifier, sender: AnyObject?) {
            
        performSegueWithIdentifier(segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        
        // still have to use guard stuff here, but at least you're
        // extracting it this time
        guard let identifier = segue.identifier,
            segueIdentifier = SegueIdentifier(rawValue: identifier) else {
                
                fatalError("Invalid segue identifier \(segue.identifier).")
        }
        
        return segueIdentifier
    }
}