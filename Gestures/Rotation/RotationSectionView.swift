//
//  RotationSectionView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct RotationSectionView: View {
    var body: some View {
        Section {
            
            NavigationLink("Rotation Gesture \"Go Back\"", destination: Text("Rotation1"))
            
            NavigationLink("Rotation Gesture \"Stay Still\"", destination: Text("Rotation 2"))
            
            NavigationLink(destination: Text("Rotation 3")) {
                VStack(alignment: .leading){
                    Text("Rotation Gesture \"Stay Still\"")
                    Text("Store Data")
                        .fontWeight(.thin)
                        
                }
            }
 
            
            
        } header: {
            Text("Rotation Gestures")
        }
        
    }
}

#Preview {
    RotationSectionView()
}
