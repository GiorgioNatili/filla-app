//
//  LoginServices.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation
import RxSwift

protocol LoginManager {
    
    func auhtenticate(user: User) -> Observable<AnyObject>
    func logout()
}