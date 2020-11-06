//
//  StartWorkoutHeader.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct StartWorkoutHeader: View {
    var body: some View {
        VStack {
            HStack {
                Text("Quick Start")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                Spacer()
            }
            
            Button(action: {}) {
                Text("Start an Empty Workout")
                    .padding(.horizontal, 90.0)
                    .padding(.vertical, 10.0)
                    .cornerRadius(3.0)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3.0)
                            .stroke(Color.blue, lineWidth: 3)
                    )
            }
        }
    }
}

struct StartWorkoutHeader_Previews: PreviewProvider {
    static var previews: some View {
        StartWorkoutHeader()
    }
}
