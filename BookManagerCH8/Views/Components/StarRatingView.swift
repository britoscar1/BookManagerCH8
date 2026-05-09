//
//  StarRatingView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 05/05/26.
//

import SwiftUI

struct StarRatingView: View {
    var rating: Int
    
    var body: some View {
          HStack(spacing: 4) {
              ForEach(1...5, id: \.self) { index in
                  Image(systemName: index < rating ? "star.fill" : "star")
                      .foregroundColor(.yellow)
              }
          }
      }
  }
