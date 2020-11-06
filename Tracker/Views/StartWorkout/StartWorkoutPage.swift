//
//  StartWorkoutPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI
import Firebase

struct StartWorkoutPage: View {
    @EnvironmentObject var session: SessionStore
    
    var body: some View {
        NavigationView {
            ScrollView {
                StartWorkoutHeader()
                    .padding(.top)
                    .navigationBarTitle("Start Workout")
                
                Text("\(session.getUser()?.email ?? "No email") logged in")
                Button(action: {session.signOut()}) {
                    Text("Logout")
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
