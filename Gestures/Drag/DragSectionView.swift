//
//  DragSectionView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct DragSectionView: View {
    @State private var currentOffset: CGSize = .zero
  
    
    var body: some View {
     
        Section {
            
            NavigationLink("Drag Gesture \"Go Back\"", destination: DragBounceBackView())
            
            NavigationLink("Drag Gesture \"Stay Still\"", destination: DragAndStayStillView())
            
            NavigationLink(destination: DragAndStoreView(currentOffset: $currentOffset)) {
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
