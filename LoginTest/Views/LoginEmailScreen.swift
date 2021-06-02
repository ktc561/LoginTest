//
//  LoginEmailScreen.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/25/21.
//

import SwiftUI

struct LoginEmailScreen: View {
    @EnvironmentObject var userInfo: UserInfo

    @State var uemail = ""
    @State var pword = ""
    
    @Binding var showSheet: Bool
    @Binding var action: SplashScreen.Action
    var body: some View {
        VStack{
            TextField("Email", text: $uemail).disableAutocorrection(true).keyboardType(.emailAddress)
                .padding()
                .frame(width: UIScreen.main.bounds.width * 0.85, height: 50)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(8.0)
            SecureField("Password", text: $pword).disableAutocorrection(true)
                .padding()
                .frame(width: UIScreen.main.bounds.width * 0.85, height: 50)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(8.0)
            HStack{
                
                Spacer()
              
                Button(action: {
                    self.action = .resetPW
                    self.showSheet = true
                }, label: {
                    Text("Reset password")
                })
                
                
            }.frame(width: UIScreen.main.bounds.width * 0.83, height: 20)
            .padding()
            VStack(spacing: 15){
                Button(action: {
                    //sign in auth
                    self.userInfo.isUserAuth = .signedIn
                }, label: {
                    Text("Login")
                        .fontWeight(.semibold)
                        
                        .foregroundColor(.white)
                })  .frame(width: UIScreen.main.bounds.width * 0.5, height: 60)
                .background(Color.green)
                .cornerRadius(8.0)
                
                
                Button(action: {
                    self.action = .signUp
                    self.showSheet = true
                }, label: {
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                })  .frame(width: UIScreen.main.bounds.width * 0.5, height: 60)
                .background(Color.blue)
                .cornerRadius(8.0)
            }
            
        }    }
}

struct LoginEmailScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginEmailScreen(showSheet: .constant(false), action: .constant(.signUp))
            .preferredColorScheme(.dark)
    }
}
