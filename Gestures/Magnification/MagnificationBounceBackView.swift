//
//  MagnificationBounceBackView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct MagnificationBounceBackView: View {
    
    @State private var scaleFactor :CGFloat = 1.0
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                NiceTextView(text: "Hello World",
                             bgColor: .black,
                             fgColor: .orange,
                             radius: 10)
                .scaleEffect(scaleFactor)
                .gesture(
                MagnificationGesture()
                    .onChanged({ value in
                        withAnimation {
                            scaleFactor = value
                        }
                    })
                    .onEnded({ value in
                        withAnimation(.spring()) {
                            scaleFactor = 1
                        }
                    })
                )
                
                
                Spacer()
            }
            .navigationTitle("Magnify And Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

#Preview {
    MagnificationBounceBackView()
}
