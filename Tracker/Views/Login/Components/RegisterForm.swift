//
//  RegisterForm.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct RegisterForm: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var passwordConfirm = ""
    @State private var showAlert = false
    @State private var alertMessage = "ERROR"
    
    @Binding var showRegister: Bool
    @EnvironmentObject var session: SessionStore
    
    func handleSubmit() {
        if (password == passwordConfirm) {
            session.register(email: email, password: password) { (result, error) in
                if let error = error {
                    alertMessage = error.localizedDescription
                    showAlert = true
                }
            }
        } else {
            alertMessage = "Passwords do not match"
            showAlert = true
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("First Name")) {
                    TextField("Please enter your first name", text: $firstName)
                }
                Section(header: Text("Last Name")) {
                    TextField("Please enter your last name", text: $lastName)
                }
                Section(header: Text("Email")) {
                    TextField("Please enter your email", text: $email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                }
                Section(header: Text("Password")) {
                    SecureField("Please enter your password", text: $password)
                    SecureField("Please confirm your password", text: $passwordConfirm)
                }
                Button(action: {handleSubmit()}) {
                    HStack() {
                        Spacer()
                        Text("Register")
                        Spacer()
                    }
                }.alert(isPresented: $showAlert) {
                    Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("Okay")))
                }
            }
            .navigationBarTitle(Text("Register"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.showRegister = false
            }) {
                Text("Done").bold()
            })
        }
    }
}

struct RegisterForm_Previews: PreviewProvider {
    static var previews: some View {
        RegisterForm(showRegister: .constant(false))
    }
}
