//
//  RotationAndStoreView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct RotationAndStoreView: View {
    @Binding var rotation: Double
    @State  var currentRotation: Double = 0.0
    
    var finalRotation: Double {
        rotation + currentRotation
    }
    
    var body: some View {
        NavigationStack {
            
                NiceTextView(text: "Hello, World",
                             bgColor: .black.opacity(0.85),
                             fgColor: .orange.opacity(0.85),
                             radius: 20)
                .rotationEffect(Angle(degrees: finalRotation))
                .gesture(
                    RotationGesture()
                        .onChanged({ angle in
                            withAnimation {
                                currentRotation = angle.degrees
                            }
                        })
                        .onEnded({ angle in
                            withAnimation {
                                rotation += currentRotation
                               currentRotation = 0
                                
                                
                            }
                        })
                         
                )
            .navigationTitle("Rotation and Stay Still")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationAndStoreView( rotation: .constant(0.0))
}
