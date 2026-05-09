//
//  GridItem.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//

import SwiftUI

struct GridCard: View {
    
    var book: Book
    
    var body: some View {
        VStack{
            Text(book.title)
            Text(book.author)
        }
    }
}
