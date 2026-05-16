//
//  PersistentBook.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 12/05/26.
//

import SwiftData
import Foundation
import UIKit

@Model
class PersistentBook{
        
    var title: String
    var author: String
    var summary: String
    var rating: Int
    var review: String
    var isFavorite: Bool
    var genre: Genre
    var readingStatus: ReadingStatus
    var coverData: Data?
    
    
    init(title: String,
         

         author: String = "",
         summary: String = "",
         rating: Int = 0,
         review: String = "",
         isFavorite: Bool = false,
         genre: Genre = .unknown,
         readingStatus: ReadingStatus = .unknown
    ){
        self.title = title
        self.author = title
        self.summary = summary
        self.rating = rating
        self.review = review
        self.isFavorite = isFavorite
        self.genre = genre
        self.readingStatus = readingStatus
    }
        
    var cover: UIImage {
        if self.coverData != nil {
            return UIImage(data: self.coverData!)!
        } else{
            return UIImage(resource: .default)
        }
    }
}
