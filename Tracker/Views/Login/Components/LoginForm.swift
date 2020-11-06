//
//  LoginForm.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct LoginForm: View {
    @State private var email = ""
    @State private var password = ""
    let login: (String, String) -> Void
    
    func handleSubmit() {
        login(email, password)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Email")) {
                TextField("Please enter your email", text: $email)
            }
            Section(header: Text("Password")) {
                SecureField("Please enter your password", text: $password)
            }
            Button(action: {handleSubmit()}) {
                HStack() {
                    Spacer()
                    Text("Submit")
                    Spacer()
                }
            }
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        func login(email: String, password: String) {
            print(email)
        }
        return LoginForm(login: login)
    }
}
