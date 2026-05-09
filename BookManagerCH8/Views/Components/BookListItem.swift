//
//  BookListItem.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 30/04/26.
//

import SwiftUI

struct BookListItem: View {
    var book: Book
    
    var body: some View {
        HStack{
            Image(book.coverImage)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 80)
            
            VStack(alignment: .leading){
                Text(book.title)
                    .font(.headline)
                Text("by \(book.author)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                StarRatingView(rating: book.rating)
            }
            
        }
        
    }
}


