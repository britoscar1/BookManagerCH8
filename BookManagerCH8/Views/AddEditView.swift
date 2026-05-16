//
//  AddEditView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 30/04/26.
//

import SwiftUI
import SwiftData

struct AddEditView: View {
    
    var book: PersistentBook?
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    
    @State var title: String
    @State var author: String
    @State var summary: String
    @State var rating: Int
    @State var review: String
    @State var isFavorite: Bool
    @State var genre: Genre
    @State var readingStatus: ReadingStatus
    @State var coverData: Data?
    
    
    
    init(book: PersistentBook? = nil) {
        // did I recieve a book to edit?
        if let book { // I did
            self.book = book
            title = book.title
            author = book.author
            summary = book.summary
            rating = book.rating
            review = book.review
            isFavorite = book.isFavorite
            genre = book.genre
            readingStatus = book.readingStatus
            if let data = book.coverData{
                self.coverData = data
            }
        }
        else{ // I did not
            title = ""
            author = ""
            summary = ""
            rating = 0
            review = ""
            isFavorite = false
            genre = .unknown
            readingStatus = .unknown
            coverData = nil
        }
        
        
   
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Book Details")) {
                    TextField("Title of the book", text: $title)
                    TextField("Author", text: $author)
                    TextEditor(text: $summary)
                        .frame(height: 180)
                    Picker("Genre", selection: $genre) {
                        ForEach(Genre.allCases, id: \.self) { genre in
                            Text(genre.rawValue).tag(genre)
                        }
                    }
                }
                Section(header: Text("Book Cover")){
                    ImageField(imageData: $coverData)
                }
                Section(header: Text("Review")) {
                    Picker("Reading Status", selection: $readingStatus) {
                        ForEach(ReadingStatus.allCases, id: \.self) { status in
                            Text(status.rawValue).tag(status)
                        }
                    }
                    StarRatingInputView(rating: $rating)
                    TextEditor(text: $review)
                        .frame(height: 100)
                }
            }
            .navigationTitle(title.isEmpty ? "Add Book" : "Edit Book")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let isNewBook = book == nil
                        let bookToSave = book ?? PersistentBook(title: "")
                        bookToSave.title = title
                        bookToSave.author = author
                        bookToSave.summary = summary
                        bookToSave.rating = rating
                        bookToSave.review = review
                        bookToSave.isFavorite = isFavorite
                        bookToSave.genre = genre
                        bookToSave.readingStatus = readingStatus
                        if isNewBook{
                            modelContext.insert(bookToSave)
                        }
                        if let coverData {
                            bookToSave.coverData = coverData
                        }
                        do{
                            try modelContext.save()
                        } catch {
                            print("Failed to save book: \(error)")
                        }
                        dismiss()
                    }
                    .disabled(title.isEmpty || author.isEmpty)
                }
                ToolbarItem(placement: .primaryAction) {
                    FavoriteToggle(isFavorite: $isFavorite, size: .subheadline)
                }
            }
        }
    }
}

#Preview {
    
    NavigationStack {
        AddEditView()
    }
}
