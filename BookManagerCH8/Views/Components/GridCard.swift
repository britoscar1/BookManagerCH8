//
//  GridItem.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//

import SwiftUI

struct GridCard: View {
    
    var book: PersistentBook
    
    var body: some View {
        VStack{
            Text(book.title)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundStyle(Color.white)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
                .background(
                    LinearGradient(
                        colors: [.clear, .black.opacity(0.8)], startPoint: .bottom, endPoint: .top
                    )
                )
            Spacer()
            Text(book.author)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundStyle(Color.white)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
                .background(
                    LinearGradient(
                        colors: [.clear, .black.opacity(0.8)], startPoint: .top, endPoint: .bottom
                    )
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image(uiImage: book.cover)
                .resizable()
                .scaledToFill()
        )
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(12)
        
    }
    
}



