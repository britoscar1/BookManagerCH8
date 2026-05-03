//
//  BookDetailView.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Details for:")
                .font(.headline)
                .foregroundStyle(.secondary)
            HStack(alignment: .top, spacing: 16) {
                Image(book.coverImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 130)
                Text(book.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
            }
            Text(book.summary)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
            Spacer()
        }
        .padding()
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}


