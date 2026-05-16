//
//  Genre.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 09/05/26.
//

enum Genre: String, CaseIterable, Hashable, Codable{
    case fantasy = "Fantasy"
    case horror =  "Horror"
    case romance = "Romance"
    case thriller = "Thriller"
    case mystery = "Mystery"
    case sciFI = "Science Fiction"
    
    case unknown = "Unknown"
    
}
