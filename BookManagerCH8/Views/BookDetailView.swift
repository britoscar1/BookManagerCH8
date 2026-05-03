//
//  BookDetailView.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack{
            HStack{
                Image(book.coverImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                VStack(alignment: .leading, spacing: 10){
                    Text(book.title)
                        .font(.title)
                    Text("by: \(book.author)")
                }
            }
            Text(book.summary)
            Button("Edit Book"){
                book.title = "New Book Here"
            }
            
            Button("Change Cover"){
                book.coverImage = "lotr_king"
            }
            
        }
    }
}



