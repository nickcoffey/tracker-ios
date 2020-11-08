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
    @State private var showAlert = false
    @State private var alertMessage = "ERROR"
    
    @EnvironmentObject var session: SessionStore
    
    func handleSubmit() {
        session.signIn(email: email, password: password) { (result, error) in
            if let error = error {
                alertMessage = error.localizedDescription
                showAlert = true
            }
        }
    }
    
    var body: some View {
        Form {
            Section(header: Text("Email")) {
                TextField("Please enter your email", text: $email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            }
            Section(header: Text("Password")) {
                SecureField("Please enter your password", text: $password)
            }
            Button(action: {handleSubmit()}) {
                HStack() {
                    Spacer()
                    Text("Login")
                    Spacer()
                }
            }.alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("Okay")))
            }
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
