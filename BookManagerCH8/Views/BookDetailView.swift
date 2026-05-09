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
                    Spacer()
                    Text(book.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                        
                    Text("by \(book.author)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    StarRatingView(rating: book.rating)
                    Spacer()
                    HStack{
                        Spacer()
                        FavoriteToggle(isFavorite: $book.isFavorite)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 150)
                Spacer()
                
            }
            VStack(alignment: .leading, spacing: 6){
                
                BookDetailCardView(title: "Summary", text:book.summary)
                
                
                BookDetailCardView(title: "Review", text: book.review)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
        .navigationTitle(book.title)
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
        .navigationBarItems(trailing: Button("Edit"){
            showEditSheet.toggle()
        })
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
        summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        rating: 0,
        review: "",
        isFavorite: false
    )
    
    BookDetailView(book: $book)
}
