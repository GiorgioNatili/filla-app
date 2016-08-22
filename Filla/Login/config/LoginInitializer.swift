//
//  Initializer.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation

//
//  {{ prefix }}{{ module_info.name }}{{ module_info.file_name }}
//  {{ module_info.project_name }}
//
//  Created by {{ developer.name }} on {{ date }}.
//  Copyright © {{ year }} {{ developer.company }}. All rights reserved.
//

import UIKit

class LoginInitializer: NSObject {
    
    //Connect with object on storyboard
    @IBOutlet weak var loginViewController: LoginViewController!
    
    override func awakeFromNib() {
        
        let configurator = LoginConfigurator(loginViewController)
        configurator.configure()
    }
    
}