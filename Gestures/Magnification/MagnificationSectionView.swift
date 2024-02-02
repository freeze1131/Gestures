//
//  MagnificationView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct MagnificationSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0
    
    var body: some View {
     
        Section {
            
            NavigationLink("Magnification Gesture \"Go Back\"", destination: {
                MagnificationBounceBackView()
            })
            
            NavigationLink("Magnification Gesture \"Stay Still\" ", destination: {
                MagnificationView()
            })
           
            NavigationLink(destination: MagnificationStoreView(scaleFactor: $scaleFactor)) {
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
