//
//  ContentView.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/5/20.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    @State private var selection = 2
    var db: Firestore!
    
    init() {
        db = Firestore.firestore()
    }
    
    func addUser() {
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Ada",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    var body: some View {
        TabView(selection: $selection) {
            ProfilePage()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(0)
            HistoryPage()
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
                .tag(1)
            StartWorkoutPage()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Start Workout")
                }
                .tag(2)
            ExercisesPage()
                .tabItem {
                    Image(systemName: "waveform.path.ecg")
                    Text("Exercises")
                }
                .tag(3)
            RoutinesPage()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Routines")
                }
                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
