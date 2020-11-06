//
//  ExercisesPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct ExercisesPage: View {
    @State var text = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                ExercisesHeader()
            }
            .navigationBarTitle("Exercises")
            .navigationBarItems(leading: Button(action: {
                print("Pressed")
            }){
                Text("New")
            })
        }
    }
}

struct ExercisesPage_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesPage()
    }
}
