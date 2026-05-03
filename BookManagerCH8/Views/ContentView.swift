//
//  ContentView.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//

import SwiftUI

struct ContentView: View {
    
    // Save new book
    @State private var books = getBooks()
    @State private var showAddBook: Bool = false
    
    // Default book
    @State private var newBook = Book(title: "", author: "", coverImage: "lotr_fellowship", summary: "")
    
    var body: some View {
        NavigationStack{
            List($books){ book in
                NavigationLink(destination: BookDetailView(book: book)){
                    BookListItem(book: book.wrappedValue)
                }
                
            }
            .navigationTitle("Book Manager")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Add View"){
                showAddBook.toggle()
            })
            .sheet(isPresented: $showAddBook){
                if(!newBook.title.isEmpty){
                    books.append(newBook)
                }
                newBook = Book(title: "", author: "", coverImage: "lotr_fellowship", summary: "")
            } content: {
                AddEditView(book: $newBook)
            }
        }
    }
}

#Preview {
    ContentView()
}

