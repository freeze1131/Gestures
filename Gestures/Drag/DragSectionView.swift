//
//  DragSectionView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct DragSectionView: View {
    @State private var offset: CGSize = .zero
  
    
    var body: some View {
     
        Section {
            
            NavigationLink("Drag Gesture \"Go Back\"", destination: DragBounceBackView())
            
            NavigationLink("Drag Gesture \"Stay Still\"", destination: DragAndStayStillView())
            
            NavigationLink(destination: DragAndStoreView(endOffset: $offset)) {
                VStack(alignment: .leading){
                    Text("Drag Gesture \"Stay Still\"")
                    Text("Store Data")
                        .fontWeight(.thin)
                        
                }
            }
    

            
        } header: {
            Text("Drag Gestures")
        }

      


    }
    
}

#Preview {
    DragSectionView()
}
