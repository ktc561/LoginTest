//
//  SplashScreen.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/17/21.
//

import SwiftUI

struct SplashScreen: View {
    enum Action {
        case signUp, resetPW
    }
    @State private var showSheet = false
    @State private var action: Action = .signUp
        
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
            VStack{
                VStack{
                    
                    Text("Title")
                    Image("slideshow")
                }
                Spacer()
                LoginEmailScreen(showSheet: $showSheet, action: $action)
                Spacer()

            }
            .sheet(isPresented: $showSheet) {
                if self.action == .resetPW {
                    ForgotPwScreen()
                } else {
                    SignUpScreen()
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
            .preferredColorScheme(.dark)
    }
}
