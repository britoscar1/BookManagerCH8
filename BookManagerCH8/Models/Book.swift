//
//  Book.swift
//  BookManagerCH8
//
//  Created by Jorge Gabriel Marin Urias on 4/28/26.
//
import Foundation

struct Book: Identifiable {
    var id: UUID = UUID()
    var title: String
    var author: String
    var coverImage: String
    var summary: String
    
    var rating: Int
    var review: String
    
    // 106
    var isFavorite: Bool
    
}
