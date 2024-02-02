//
//  GeneralGestureSection.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct GeneralGestureSection: View {
    var body: some View {
        
        Section {
            NavigationLink(destination: AllGestures()) {
                Text("General Gestures")
            }
        } header: {
            Text("General Gestures")
        }
        
        
    }
}

#Preview {
    GeneralGestureSection()
}
