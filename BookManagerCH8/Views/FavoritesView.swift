//
//  FavoriteBooksView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//

import SwiftUI

struct FavoritesView: View{
    
    @Binding var books: [Book]
    
    let gridLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    //computed property
    
    private var favoriteBooks: [Book]{
        books.filter({$0.isFavorite})
    }
    
    var body: some View{
        LazyVGrid(columns: gridLayout){
            ForEach(favoriteBooks){ book in
                GridCard(book: book)
            }
        }
    }
}
