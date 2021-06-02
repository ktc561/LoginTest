//
//  LoginTestApp.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/17/21.
//

import SwiftUI
import Firebase

@main
struct LoginTestApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var userInfo = UserInfo() //inst of user info to pass into view as env obj  .environmentObject(userInfo) 
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(userInfo)
        }
    }
}
