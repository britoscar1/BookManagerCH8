//
//  utils.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 09/05/26.
//

func filterFavoriteBooks(books: [PersistentBook], genre: Genre?, readingStatus: ReadingStatus?) -> [PersistentBook]{
    books.filter { book in
        book.isFavorite && (genre == nil || book.genre == genre) && (readingStatus == nil || book.readingStatus == readingStatus)
    }
}
