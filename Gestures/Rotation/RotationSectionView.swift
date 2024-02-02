//
//  RotationSectionView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct RotationSectionView: View {
    
    @State private var rotation: Double = 0.0
    
    var body: some View {
        Section {
            
            NavigationLink("Rotation Gesture \"Go Back\"", destination: RotationView())
            
            NavigationLink("Rotation Gesture \"Stay Still\"", destination: RotationAndStayStillView())
            
            NavigationLink(destination: RotationAndStoreView(rotation: $rotation)) {
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
