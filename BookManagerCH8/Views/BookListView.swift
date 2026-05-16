//
//  BookListView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//

import SwiftUI
import SwiftData

struct BookListView: View {
    
    
    @Query var books: [PersistentBook]
    
    @State private var showAddBook: Bool = false

//    @State private var newBook = Book(title: "", author: "", coverImage: "lotr_fellowship", summary: "", rating: 0, review: "", isFavorite: false, genre: .unknown)
    
    @AppStorage(SETTINGS_SHOW_RATING) private var toggleRating: Bool = SETTINGS_SHOW_RATING_VALUE
    
    var body: some View {
        NavigationStack{
            List(books, id:\.self.id){ book in
                NavigationLink(destination: BookDetailView(book: book)){
                    BookListItem(book: book, showRating: toggleRating)
                }
                
            }
            .navigationTitle("Book Manager")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Add"){
                showAddBook.toggle()
            })
            .sheet(isPresented: $showAddBook){
//                if(!newBook.title.isEmpty){
//                    books.append(newBook)
//                }
//                newBook = Book(title: "", author: "", coverImage: "lotr_fellowship", summary: "", rating: 0, review:"", isFavorite: false)
            } content: {
                AddEditView()
            }
        }
    }
}
