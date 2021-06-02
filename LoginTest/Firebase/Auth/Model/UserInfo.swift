//
//  UserInfo.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/26/21.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import Firebase

class UserInfo: ObservableObject {
    
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    @Published var isUserAuth: FBAuthState = .undefined
    
    // change state
    // create func to config fbauth did state change listener
    func configFbStateDidChange() {
        self.isUserAuth = .signedOut
        
    }
}
