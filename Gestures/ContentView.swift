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
                MagnificationSectionView()

                Text("Magnification")
                Text("Drag")
                Text("Rotation")
                
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    ContentView()
}
