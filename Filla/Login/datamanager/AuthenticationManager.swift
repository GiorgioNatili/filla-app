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

    var fakeAuthentication:String
    var fakeLogout:String
    
    init() {
        
        self.fakeAuthentication = "https://jsonplaceholder.typicode.com/posts"
        self.fakeLogout = "https://jsonplaceholder.typicode.com/users"
    }
    
    // MARK: - LoginManager implementation
    func auhtenticate(user: User) -> Observable<AnyObject> {
        
        return JSON(.GET, fakeAuthentication).observeOn(MainScheduler.instance)
    }
    
    func logout() -> Observable<AnyObject> {
        
        return JSON(.GET, fakeLogout).observeOn(MainScheduler.instance)
    }
}

