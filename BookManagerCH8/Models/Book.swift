
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
    
    //106 - 2
    
    //genre
    var genre: Genre = .unknown
    //readingStatus
    var readingStatus: ReadingStatus = .planToRead
}
