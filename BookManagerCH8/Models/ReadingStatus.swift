//
//  ReadingStatus.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 09/05/26.
//

enum ReadingStatus: String, CaseIterable, Hashable, Codable{
    
    case reading = "Currently Reading"
    case finished = "Finished"
    case planToRead = "Want To Read"
    case dropped = "Dropped"
    
    case unknown = "Unknown"
}
