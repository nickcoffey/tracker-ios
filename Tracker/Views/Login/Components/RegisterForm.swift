//
//  RegisterForm.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct RegisterForm: View {
    @State private var email = ""
    @State private var password = ""
    @State private var passwordConfirm = ""
    let register: (String, String) -> Void
    
    func handleSubmit() {
        if password == passwordConfirm {
            register(email, password)
        } else {
            print("Passwords do not match")
        }
    }
    
    var body: some View {
        Form {
            Section(header: Text("Email")) {
                TextField("Please enter your email", text: $email)
            }
            Section(header: Text("Password")) {
                SecureField("Please enter your password", text: $password)
            }
            Section(header: Text("Confirm Password")) {
                SecureField("Please confirm your password", text: $passwordConfirm)
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

struct RegisterForm_Previews: PreviewProvider {
    static var previews: some View {
        func register(email: String, password: String) {
            print(email)
        }
        return RegisterForm(register: register)
    }
}
