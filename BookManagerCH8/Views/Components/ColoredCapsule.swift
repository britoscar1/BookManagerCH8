//
//  ColoredCapsule.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 09/05/26.
//

import SwiftUI

struct ColoredCapsule: View {
    
    var text: String
    var color: Color
    
    var body: some View{
        Text(text)
            .font(.caption)
            .fontWeight(.semibold)
            .padding(8)
            .background(color.opacity(0.3))
            .clipShape(Capsule())
    }
}
