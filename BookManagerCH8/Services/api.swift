//
//  api.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 30/04/26.
//


func getBooks() -> [Book]{
    return [
        Book(
            title: "Book 1 is a really long text to test this out",
            author: "Author 1",
            coverImage: "lotr_fellowship",
            summary: "This is a really long summary to see how it wraps in the preview",
            rating: 3,
            review: "Lorem ipsum",
            isFavorite: true
        ),
        Book(
            title: "Book 2",
            author: "Author 2",
            coverImage: "lotr_towers",
            summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            rating: 3,
            review: "Lorem ipsum",
            isFavorite: false
        ),
        Book(title: "Book 3", author: "Author 3", coverImage: "lotr_king", summary: "Small summary", rating: 3,
             review: "Lorem ipsum", isFavorite: false),
    ]
}
