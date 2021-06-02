//
//  SignUpScreen.swift
//  LoginTest
//
//  Created by MacBook Pro on 5/27/21.
//

import SwiftUI

struct SignUpScreen: View {
    // dismiss sheet
    @Environment(\.presentationMode) var presenationMode
    // verify email logic w view model
    @State var uemail = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 42) {
                TextField("Full Name", text: $uemail).disableAutocorrection(true).keyboardType(.emailAddress)
                    .padding()
                    .frame(height: 50)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(8.0)
                
                TextField("Enter email address", text: $uemail).disableAutocorrection(true).keyboardType(.emailAddress)
                    .padding()
                    .frame(height: 50)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(8.0)
                
                TextField("Password", text: $uemail).disableAutocorrection(true).keyboardType(.emailAddress)
                    .padding()
                    .frame(height: 50)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(8.0)
                
                TextField("Confirm password", text: $uemail).disableAutocorrection(true).keyboardType(.emailAddress)
                    .padding()
                    .frame(height: 50)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(8.0)
                
                let cityData = [
                    "name": "Los Angelos New"
                ]
                
                Button(action: {
                    FBRefManager
                        .root
                        .collection("cities")
                        .document("LA")
                        .setData(cityData, merge: true) { (err) in
                            if let err = err {
                                print(err.localizedDescription)
                            }
                            print("Successfully set and merged new data set")
                        }
                }, label: {
                    Text("Register")
                        .frame(width: 200)
                        .padding(.vertical, 15)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    //    .opacity(0.8) logic ?
                })
                Spacer()
                
            }.padding(.top)
            .frame(width: 300)
            .navigationBarTitle("Sign Up", displayMode: .inline)
            .navigationBarItems(trailing: Button("Dismiss") {
                self.presenationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
