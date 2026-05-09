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
    
    // Default book
   
    
    var body: some View {
        TabView{
            BookListView(books: $books)
                .tabItem {
                    Label("Books", systemImage: "book.closed.fill")
                }
            FavoritesView(books: $books)
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }

        }
        
    }
}

#Preview {
    ContentView()
}

