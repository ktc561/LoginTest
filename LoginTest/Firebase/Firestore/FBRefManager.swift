//
//  FBRefManager.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/31/21.
//

import Foundation
import Firebase


enum FBRefManager {
    static let rootEnvPath = "dev"
    
    static let db = Firestore.firestore()
    static let root = db.collection(rootEnvPath).document(rootEnvPath)
    
    
}
