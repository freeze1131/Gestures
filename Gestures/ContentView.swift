//
//  ContentView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form{
                GeneralGestureSection()
                MagnificationSectionView()
                DragSectionView()
                RotationSectionView()
               
                
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    ContentView()
}
