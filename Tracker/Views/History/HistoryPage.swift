//
//  HistoryPage.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct HistoryPage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Content")
                    .navigationBarTitle("History")
            }
        }
    }
}

struct HistoryPage_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPage()
    }
}
