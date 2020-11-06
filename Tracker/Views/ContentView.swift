//
//  ContentView.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/5/20.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct ContentView: View {
    var db: Firestore = Firestore.firestore()
    
    @EnvironmentObject var session: SessionStore
    
    var body: some View  {
        if (session.getUser() != nil) {
            HomePage()
        } else {
            LoginPage()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
