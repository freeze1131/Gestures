//
//  MagnificationView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct MagnificationSectionView: View {
    var body: some View {
     
        Section {
            NavigationLink("Magnification Gestures", destination: {
                Text("Example 1")
            })
            NavigationLink("Magnification Gesture \"Go Back\"", destination: {
                Text("Example 1")
            })
            NavigationLink(destination: Text("Example 3")) {
                VStack (alignment:.leading){
                    Text("Magnification Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                }
            }
        } header: {
            Text("Magnification Gestures")
        }


    }
}

#Preview {
    Form {
        MagnificationSectionView()
    }
}
