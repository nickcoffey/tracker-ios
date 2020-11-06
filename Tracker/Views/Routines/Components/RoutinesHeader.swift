//
//  RoutinesHeader.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct RoutinesHeader: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Manage")
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
    }
}

struct RoutinesHeader_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesHeader()
    }
}
