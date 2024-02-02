//
//  DragSectionView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct DragSectionView: View {
    
  
    
    var body: some View {
     
        Section {
            
            NavigationLink("Drag 1", destination: Text("Drag 1"))
            
            NavigationLink("Drag 2", destination: Text("Drag 2"))
            
            NavigationLink("Drag 3", destination: Text("Drag 3"))
    

            
        } header: {
            Text("Drag Gestures")
        }

      


    }
    
}

#Preview {
    DragSectionView()
}
