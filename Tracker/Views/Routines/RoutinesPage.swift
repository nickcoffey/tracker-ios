//
//  RoutinesPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct RoutinesPage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                RoutinesHeader()
                    .padding(.top)
                    .navigationBarTitle("Routines")
            }
        }
    }
}

struct RoutinesPage_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesPage()
    }
}
