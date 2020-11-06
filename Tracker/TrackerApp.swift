//
//  TrackerApp.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/5/20.
//

import SwiftUI
import Firebase

@main
struct TrackerApp: App {
    @StateObject var session = SessionStore(user: Auth.auth().currentUser)
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {	
            ContentView()
                .environmentObject(session)
        }
    }
}
