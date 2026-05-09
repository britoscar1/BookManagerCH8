//
//  BookListView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//

import SwiftUI

struct BookListView: View {
    
    
    @Binding var books: [Book]
    
    @State private var showAddBook: Bool = false

    @State private var newBook = Book(title: "", author: "", coverImage: "lotr_fellowship", summary: "", rating: 0, review: "", isFavorite: false)
    
    var body: some View {
        NavigationStack{
            List($books){ book in
                NavigationLink(destination: BookDetailView(book: book)){
                    BookListItem(book: book.wrappedValue)
                }
                
            }
            .navigationTitle("Book Manager")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Add"){
                showAddBook.toggle()
            })
            .sheet(isPresented: $showAddBook){
                if(!newBook.title.isEmpty){
                    books.append(newBook)
                }
                newBook = Book(title: "", author: "", coverImage: "lotr_fellowship", summary: "", rating: 0, review:"", isFavorite: false)
            } content: {
                AddEditView(book: $newBook)
            }
        }
    }
}
