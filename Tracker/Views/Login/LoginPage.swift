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
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            LoginForm()
                .frame(height: 275.0)
            Button(action: {}) {
                Text("Forgot Password?")
            }
            
            Spacer()
            
            HStack {
                Text("Need an account?")
                Button(action: {isRegisterSheetOpen.toggle()}){
                    Text("Register here")
                }.sheet(isPresented: $isRegisterSheetOpen) {
                    RegisterForm(showRegister: $isRegisterSheetOpen)
                }
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        let session = SessionStore(user: nil)
        return LoginPage()
            //            .environment(\.colorScheme, .dark)
            .environmentObject(session)
    }
}
