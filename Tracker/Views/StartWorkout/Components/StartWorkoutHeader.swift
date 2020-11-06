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
                    .padding([.top, .leading])
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
            .padding(.top)
            
            HStack(alignment: .center) {
                Text("Routines")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                
                Spacer()
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus")
                        Text("Routine")
                            .font(.body)
                    }
                    .frame(width: 90, height: 20)
                    .cornerRadius(3.0)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3.0)
                            .stroke(Color.blue, lineWidth: 3)
                    )
                }
                
                Button(action: {}) {
                    Image(systemName: "folder.badge.plus")
                        .cornerRadius(3.0)
                        .frame(width: 30.0, height: 20.0)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3.0)
                                .stroke(Color.blue, lineWidth: 3)
                        )
                }
                .padding(.trailing)
            }
            .padding(.top)
        }
    }
}

struct StartWorkoutHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartWorkoutHeader()
        }
    }
}
