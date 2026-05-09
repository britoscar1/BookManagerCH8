//
//  AddEditView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 30/04/26.
//

import SwiftUI

struct AddEditView: View {
    
    @Binding var book: Book
    @Environment(\.dismiss) var dismiss
    @State private var draft: Book
    
    
    init(book: Binding<Book>) {
        _book = book
        _draft = State(initialValue: book.wrappedValue)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Book Details")) {
                    
                    TextField("Title of the book", text: $draft.title)
                    TextField("Author", text: $draft.author)
                    TextEditor(text: $draft.summary)
                        .frame(height: 180)
                    
                    Picker("Cover", selection: $draft.coverImage) {
                        Text("The Fellowship of the ring")
                            .tag("lotr_fellowship")
                        Text("The Two Towers")
                            .tag("lotr_towers")
                        Text("The return of the king")
                            .tag("lotr_king")
                    }
                }
                Section(header: Text("Review")){
                    
                    StarRatingInputView(rating: $draft.rating)
                    TextEditor(text: $draft.review)
                        .frame(height: 100)
                    
                }
            }
            .navigationTitle(book.title.isEmpty ? "Add Book" : "Edit Book")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        book = draft
                        dismiss()
                    }
                    .disabled(draft.title.isEmpty || draft.author.isEmpty)
                }
                ToolbarItem(placement: .primaryAction){
                    FavoriteToggle(isFavorite: $draft.isFavorite, size: .subheadline)
                }
            }
        }
    }
}

#Preview {
    @State var book = Book(title: "", author: "", coverImage: "", summary: "", rating: 0, review: "", isFavorite: false)
    
    NavigationStack {
        AddEditView(book: $book)
    }
}
