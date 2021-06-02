//
//  HomeScreen.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/27/21.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var userInfo: UserInfo

    var body: some View {
        NavigationView {
            Text("Logged in as user")
                .navigationBarTitle("Firebase Login")
                .navigationBarItems(trailing: Button("Log Out") {
                    self.userInfo.isUserAuth = .signedOut
                })
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
