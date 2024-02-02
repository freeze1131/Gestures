//
//  RotationView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct RotationView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        NavigationStack {
            
                NiceTextView(text: "Hello, World",
                             bgColor: .black.opacity(0.85),
                             fgColor: .orange.opacity(0.85),
                             radius: 20)
                .rotationEffect(Angle(degrees: rotation))
                .gesture(
                    RotationGesture()
                        .onChanged({ angle in
                            withAnimation {
                                rotation = angle.degrees
                            }
                        })
                        .onEnded({ _ in
                            withAnimation {
                                rotation = .zero
                            }
                        })
                         
                )
            .navigationTitle("Rotation and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationView()
}
