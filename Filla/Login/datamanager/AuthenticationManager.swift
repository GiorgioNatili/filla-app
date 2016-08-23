//
//  Authentication.swift
//  Filla
//
//  Created by Natili, Giorgio on 8/22/16.
//  Copyright © 2016 Giorgio Natili. All rights reserved.
//

import Foundation
import ObjectMapper
import RxAlamofire
import RxSwift

class AuthenticationManager: LoginManager {

    var fakeURL:String
    
    init() {
        
        self.fakeURL = "https://jsonplaceholder.typicode.com/posts"
    }
    
    // MARK: LoginManager implementation
    func auhtenticate(user: User) -> Observable<AnyObject> {
        
        return JSON(.GET, fakeURL).observeOn(MainScheduler.instance)
    }
    
    func logout() {
        
        
    }
}

