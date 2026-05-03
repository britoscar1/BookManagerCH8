//
//  BookDetailView.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//

import SwiftUI

struct BookDetailView: View {

    @Binding var book: Book
    @State private var showEditSheet = false

    var body: some View {
        VStack(spacing: 16){
            Text("Details for:")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.bottom, 10)
            
            HStack{
                Image(book.coverImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .cornerRadius(6)
                
                VStack(alignment: .leading, spacing: 10){
                    Text(book.title)
                        .font(.title)
                        .fontWeight(.bold)
                        
                    Text("by: \(book.author)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                }
                Spacer()
                
            }
            VStack(alignment: .leading, spacing: 6){
                Text("Summary")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(book.summary)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .lineLimit(nil)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button(action: { showEditSheet = true }){
                Text("Edit Book")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: 300)
                    .padding(12)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
        .sheet(isPresented: $showEditSheet){
            AddEditView(book: $book)
            
        }
    }
}

#Preview {
    @State var book = Book(
        title: "The return of the king",
        author: "J.R.R Tolkien",
        coverImage: "lotr_king",
        summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    )
    
    BookDetailView(book: $book)
}
