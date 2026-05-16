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
            isFavorite: true,
            genre: .mystery,
            readingStatus: .planToRead
        ),
        Book(
            title: "Book 2",
            author: "Author 2",
            coverImage: "lotr_towers",
            summary: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            rating: 3,
            review: "Lorem ipsum",
            isFavorite: false,
            genre: .mystery,
            readingStatus: .finished
        ),
        Book(title: "Book 3", author: "Author 3", coverImage: "lotr_king", summary: "Small summary", rating: 3,
             review: "Lorem ipsum", isFavorite: true, genre: .mystery, readingStatus: .reading),
        Book(
            title: "The Silent Forest",
            author: "Emily Carter",
            coverImage: "lotr_fellowship",
            summary: "A journalist uncovers strange disappearances connected to an isolated forest town.",
            rating: 4,
            review: "Very atmospheric and suspenseful.",
            isFavorite: true,
            genre: .mystery,
            readingStatus: .finished
        ),
        Book(
            title: "Digital Shadows",
            author: "Nathan Cole",
            coverImage: "lotr_fellowship",
            summary: "A cybersecurity analyst becomes the target of an anonymous hacker group.",
            rating: 5,
            review: "Modern thriller with realistic tech references.",
            isFavorite: false,
            genre: .thriller,
            readingStatus: .planToRead
        ),
        Book(
            title: "Beneath Crimson Skies",
            author: "Olivia Brooks",
            coverImage: "lotr_towers",
            summary: "Two rival kingdoms struggle for power during an endless winter.",
            rating: 4,
            review: "Strong fantasy setting and characters.",
            isFavorite: true,
            genre: .fantasy,
            readingStatus: .reading
        ),
        Book(
            title: "The Last Lighthouse",
            author: "Grace Turner",
            coverImage: "lotr_fellowship",
            summary: "A lonely lighthouse keeper begins receiving mysterious radio transmissions.",
            rating: 4,
            review: "Slow start but strong ending.",
            isFavorite: true,
            genre: .mystery,
            readingStatus: .planToRead
        ),
        Book(
            title: "Autumn Letters",
            author: "Hannah Lee",
            coverImage: "lotr_king",
            summary: "A collection of letters reconnects two childhood friends after many years.",
            rating: 3,
            review: "Simple but heartfelt.",
            isFavorite: false,
            genre: .romance,
            readingStatus: .finished
        ),
        Book(
            title: "The Hollow Crown",
            author: "Victor Hayes",
            coverImage: "lotr_fellowship",
            summary: "A reluctant prince must reclaim a kingdom ruled by traitors.",
            rating: 5,
            review: "Classic fantasy adventure done well.",
            isFavorite: true,
            genre: .fantasy,
            readingStatus: .reading
        ),
        Book(
            title: "Codebreaker",
            author: "Ryan Walker",
            coverImage: "lotr_king",
            summary: "A university student accidentally uncovers encrypted government files.",
            rating: 5,
            review: "Great tension and realistic pacing.",
            isFavorite: true,
            genre: .thriller,
            readingStatus: .finished
        ),
    ]
}
