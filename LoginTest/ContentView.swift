//
//  ContentView.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    //first view gets from userInfo obj from env to check & update auth state
    //no init val it's auto read from env
    @EnvironmentObject var userInfo: UserInfo
    var body: some View {
        Group {
            if userInfo.isUserAuth == .signedOut {
                SplashScreen()
            } else if userInfo.isUserAuth == .undefined {
                LoadingScreen()
            } else {
                HomeScreen()
            }
        }.onAppear{
            userInfo.configFbStateDidChange()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
