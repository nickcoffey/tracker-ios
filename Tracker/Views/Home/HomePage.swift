//
//  HomePage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct HomePage: View {
    @State private var selection = 2
    
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

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
