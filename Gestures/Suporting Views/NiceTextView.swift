//
//  NiceTextView.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    
    var body: some View {
        Text("Hello, World!")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(fgColor)
            
            .padding()
            .background(bgColor)
            .clipShape(RoundedRectangle(cornerRadius: radius))
        
    }
}

#Preview {
    NiceTextView(text: "Hello world", bgColor: .blue, fgColor: .black
                 , radius: 30)
}
