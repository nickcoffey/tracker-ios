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
    
    @State private var isRegisterSheetOpen = false
    
    @EnvironmentObject var session: SessionStore
    
    var body: some View {
        VStack {
            Text("Please Login")
                .font(.title)
            
            LoginForm(login: session.signIn)
            
            HStack {
                Text("Need an account?")
                Button(action: {isRegisterSheetOpen.toggle()}){
                    Text("Register here")
                }.sheet(isPresented: $isRegisterSheetOpen) {
                    VStack {
                        Image(systemName: "chevron.compact.down")
                            .padding(.vertical)
                        Text("Register")
                            .font(.title3)
                        RegisterForm(register: session.register)
                    }
                }
            }
            Spacer()
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
