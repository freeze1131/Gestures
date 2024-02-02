//
//  SquaresRow.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct SquaresRow: View {
    let colors: [Color]
    let dim: CGFloat
    
    init(colors: [Color], dim: CGFloat = 50) {
        self.colors = colors
        self.dim = dim
    }
    
    var body: some View {
        GridRow {
            ForEach(colors,id:\.self) { color in
                color
                    .frame(width:dim,height: dim)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
        }
    }
}





#Preview {
    SquaresRow(colors: [.red,.blue,.yellow,.black])
}
