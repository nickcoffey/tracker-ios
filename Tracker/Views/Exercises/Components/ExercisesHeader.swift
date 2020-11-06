//
//  ExercisesHeader.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import SwiftUI

struct ExercisesHeader: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            SearchBar(text: $text)
            
            HStack {
                Spacer()
                
                Button(action: {}) {
                    Text("Any Body Part")
                        .fontWeight(.bold)
                        .frame(width: 175, height: 22)
                }
                .background(Color(.systemGray2))
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(3.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 3.0)
                        .stroke(Color(.systemGray2), lineWidth: 3)
                )
                
                Spacer()
                
                Button(action: {}) {
                    Text("Any Category")
                        .fontWeight(.bold)
                        .frame(width: 175, height: 22)
                }
                .background(Color(.systemGray2))
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(3.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 3.0)
                        .stroke(Color(.systemGray2), lineWidth: 3)
                )
                
                Spacer()
            }
            .padding(.top, 5.0)
            
        }
    }
}

struct ExercisesHeader_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesHeader()
    }
}
