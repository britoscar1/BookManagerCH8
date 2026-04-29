//
//  ContentView.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//

import SwiftUI

struct ContentView: View {
    // mocking
    var books = [
        Book(
            title: "Book 1 is a really long text to test this out",
            author: "Author 1",
            coverImage: "lotr_fellowship",
            summary: "This is a really long summary to see how it wraps in the preview"
        ),
        Book(
            title: "Book 2",
            author: "Author 2",
            coverImage: "lotr_towers",
            summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        ),
        Book(title: "Book 3", author: "Author 3", coverImage: "lotr_king", summary: "Small summary"),
    ]
    
    var body: some View {
        NavigationStack{
            List(books, id: \.self.title){ book in
                NavigationLink(destination: BookDetailView(book: book)){
                    HStack{
                        Image(book.coverImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 80)
                        VStack(alignment: .leading){
                            Text(book.title)
                                .font(.headline)
                            Text(book.author)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Book Manager")
        }
    }
}

//#Preview {
//    ContentView()
////        .modelContainer(for: Item.self, inMemory: true)
//}
