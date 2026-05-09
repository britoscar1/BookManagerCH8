//
//  BookDetailCardView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 05/05/26.
//

import SwiftUI

struct BookDetailCardView: View {
    var title: String = ""
    var text: String =  ""
    var maxHeight: CGFloat = 100
    
    var body: some View {
        
        VStack(spacing: 6){
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.bottom)
            
            Text(text)
            
        }
        .frame(maxWidth: .infinity, maxHeight:maxHeight)
        .padding()
        .background(.gray.opacity(0.3))
        .cornerRadius(10)
                
              
    }
}

#Preview {
    BookDetailCardView()
}
