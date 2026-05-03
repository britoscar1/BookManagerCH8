//
//  AddEditView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 30/04/26.
//

import SwiftUI

//Screen or Component
struct AddEditView: View {
    
    @Binding var book: Book
    
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var author: String = ""
    @State var summary: String = ""
    
    @State var selectedCover = "lotr_felowship"
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Book Details")){
                    
                    TextField("Title of the book", text: $book.title)
                    
                    TextField("Author", text: $book.author)
                    
                    TextEditor(text: $book.summary)
                        .frame(height:180)
                    
                    Picker("Cover", selection: $book.coverImage){
                        Text("The Fellowship of the ring")
                            .tag("lotr_fellowship")
                        Text("The Two Towers")
                            .tag("lotr_towers")
                        Text("The return of the king")
                            .tag("lotr_king")
                    }
                    
                }
            }
                .navigationTitle("Add Book")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .confirmationAction){
                        Button("Save"){
                            
                            
                            dismiss()
                        }
                    }
                }
        }
    }
}


//Parent view - example
#Preview {
    @State var book = Book(title: "", author: "", coverImage: "", summary: "")
    
    NavigationStack {
        AddEditView(book: $book)
    }
}
