//
//  ProfilePage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Content")
                    .navigationBarTitle("Profile")
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
