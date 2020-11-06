//
//  StartWorkoutPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct StartWorkoutPage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                StartWorkoutHeader()
                    .navigationBarTitle("Start Workout")
            }
        }
    }
}

struct StartWorkoutPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartWorkoutPage()
        }
    }
}
