//
//  BookDetailView.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//

import SwiftUI

struct BookDetailView: View {
    
    var book: Book
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                HStack{
                    Image(book.coverImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                    VStack{
                        Text(book.title)
                            .font(.headline)
                        Text("by \(book.author)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                }
                .padding(.bottom)
                Text("Summary")
                    .font(.title)
                Text(book.summary)
                Spacer()
            }.padding(.horizontal)
            .navigationTitle("Book Details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let bookToShow = Book(title: "Test Title", author: "Test Author", coverImage: "lotr_fellowship", summary: "This is a test summary")
    BookDetailView(book: bookToShow)
}
