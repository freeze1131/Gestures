//
//  DragAndStoreView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct DragAndStoreView: View {
    @Binding  var currentOffset:CGSize 
    @State  var endOffset:CGSize = .zero

    
    var offset: CGSize {
        CGSize(width: currentOffset.width + endOffset.width,
               height: currentOffset.height+endOffset.height)
    }
    
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
                .onTapGesture {
                    withAnimation {
                        currentOffset = .zero
                        endOffset = .zero
                    }
                }
                .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation {
                            currentOffset = value.translation
                        }
                    })
                    .onEnded({ _ in
                        withAnimation {
                            endOffset = CGSize(width: currentOffset.width + endOffset.width,
                                               height: currentOffset.height+endOffset.height)
                            currentOffset = .zero
                        }
                        
                    })
                )
                
                
                Spacer()
            }
            .navigationTitle("Drag and Store Data")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DragAndStoreView(currentOffset: .constant(.zero))
}
