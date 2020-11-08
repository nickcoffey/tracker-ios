//
//  StartWorkoutPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI
import Firebase

struct StartWorkoutPage: View {
    @State private var showAlert = false
    
    @EnvironmentObject var session: SessionStore
    
    var body: some View {
        NavigationView {
            ScrollView {
                StartWorkoutHeader()
                    .padding(.top)
                    .navigationBarTitle("Start Workout")
                
                Text("\(session.getUser()?.email ?? "No email") logged in")
                Button(action: {showAlert = true}) {
                    Text("Logout")
                }.alert(isPresented: $showAlert) {
                    Alert(title: Text("Logout?"), message: Text("Are you sure you want to logout?"), primaryButton: .default(Text("Yes"), action: {session.signOut()}), secondaryButton: .cancel(Text("No"), action: {}))
                }
            }
        }
    }
}

struct StartWorkoutPage_Previews: PreviewProvider {
    static var previews: some View {
        StartWorkoutPage()
    }
}
