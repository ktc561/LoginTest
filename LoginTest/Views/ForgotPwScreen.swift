//
//  ForgotPwScreen.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/27/21.
//

import SwiftUI

struct ForgotPwScreen: View {
    // dismiss sheet
    @Environment(\.presentationMode) var presenationMode
    // verify email logic w view model
    @State var uemail = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 42) {
                TextField("Enter email address", text: $uemail).disableAutocorrection(true).keyboardType(.emailAddress)
                    .padding()
                    .frame(height: 50)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(8.0)
                
                Button(action: {
                    // reset pw action
                }, label: {
                    Text("Reset")
                        .frame(width: 200)
                        .padding(.vertical, 15)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    //    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/) logic ?
                })
                Spacer()
                
            }.padding(.top)
            .frame(width: 300)
            .navigationBarTitle("Request a password request", displayMode: .inline)
            .navigationBarItems(trailing: Button("Dismiss") {
                self.presenationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct ForgotPwScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPwScreen()
    }
}
