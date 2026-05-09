//
//  StarRatingInputView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 05/05/26.
//

import SwiftUI

struct StarRatingInputView: View {
    @Binding var rating: Int
    var maxRating: Int = 5

    var body: some View {
        HStack {
            ForEach(0..<maxRating, id: \.self) { index in
                Image(systemName: index < rating ? "star.fill" : "star")
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        rating = index + 1
                    }
            }
        }
    }
}
