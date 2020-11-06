//
//  LoginPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI
import Firebase

struct LoginPage: View {
    @State private var email = ""
    @State private var password = ""
    
    @EnvironmentObject var session: SessionStore
    
    func login() {
        session.signIn(email: email, password: password) { (profile, error) in
            if let error = error {
                print("Error when signing up: \(error)")
                return
            }
        }
    }
    
    
    
    var body: some View {
        print("Current user: \(Auth.auth().currentUser as Optional)")
        
        return VStack {
            Text("PLEASE LOGIN")
            
            Form {
                Section(header: Text("Email")) {
                    TextField("Please enter your email", text: $email)
                }
                Section(header: Text("Password")) {
                    SecureField("Please enter your password", text: $password)
                }
                Button(action: {login()}) {
                    HStack() {
                        Spacer()
                        Text("Submit")
                        Spacer()
                    }
                }
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
