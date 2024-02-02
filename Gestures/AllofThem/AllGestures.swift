//
//  AllGestures.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct AllGestures: View {
    
    @State private var offset: CGSize = .zero
    @State private var rotation: Double = 0.0
    @State private var scaleFactor: Double = 1.0
    var body: some View {
        NavigationStack {
            NiceTextView(text: "Hello, World",
                         bgColor: .black.opacity(0.85),
                         fgColor: .orange.opacity(0.85),
                         radius: 20)
            .offset(offset)
            .rotationEffect(Angle(degrees: rotation))
            .scaleEffect(scaleFactor)
            .gesture(
                SimultaneousGesture(  
                    SimultaneousGesture(
                    DragGesture()
                        .onChanged{ value in
                            withAnimation {
                                offset = value.translation
                            }
                        }
                        .onEnded{_ in
                            withAnimation {
                                offset = .zero
                            }
                        },
                    MagnificationGesture()
                        .onChanged{ value in
                            withAnimation {
                                scaleFactor = value
                            }
                        }
                        .onEnded{value in
                            withAnimation {
                                scaleFactor = 1
                            }
                        }

                    ),
                    RotationGesture()
                        .onChanged({ angle in
                            withAnimation {
                                rotation = angle.degrees
                            }
                        })
                        .onEnded({ angle in
                            rotation = .zero
                        })
                )
               
            )
            
            
            
            
            .navigationTitle("All Gestures")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    AllGestures()
}
