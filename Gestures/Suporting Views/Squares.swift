//
//  Squares.swift
//  Gestures
//
//  Created by Ahmet Ozen on 2.02.2024.
//

import SwiftUI

struct Squares: View {
    var body: some View {
        Grid {
            SquaresRow(colors: [.red, .green, .blue])
            SquaresRow(colors: [.yellow, .indigo, .cyan])
            SquaresRow(colors: [.brown, .orange, .gray])
        }
    }
}

#Preview {
    Squares()
}
