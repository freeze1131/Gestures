//
//  DragBounceBackView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct DragBounceBackView: View {
    
    @State private var offset:CGSize = .zero
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Squares()
                Spacer()
                
                NiceTextView(text: "Hello, World",
                             bgColor: .black.opacity(0.85),
                             fgColor: .orange.opacity(0.85),
                             radius: 20)
                .offset(offset)
                .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation {
                            offset = value.translation
                        }
                    })
                    .onEnded({ _ in
                        withAnimation {
                            offset = .zero
                        }
                    })
                )
                
                
                Spacer()
            }
            .navigationTitle("Drag and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragBounceBackView()
}
