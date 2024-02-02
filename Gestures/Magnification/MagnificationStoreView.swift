//
//  MagnificationStoreView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct MagnificationStoreView: View {
    
    @State  var changeScaleFactor: CGFloat = 0.0
    @Binding  var scaleFactor :CGFloat
    
    var sumScaleFactor: CGFloat {
        changeScaleFactor + scaleFactor
    }
    
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
                            scaleFactor = value
                        }
                    })
                )
                
                
                Spacer()
            }
            .navigationTitle("Magnify And Store Data")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

#Preview {
    MagnificationStoreView(scaleFactor: .constant(1))
}
