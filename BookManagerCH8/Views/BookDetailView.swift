
import SwiftUI
import SwiftData

struct BookDetailView: View {

    var book: PersistentBook
    
    @State private var isFavorite: Bool
    @State private var showEditSheet = false
    @Environment(\.modelContext) private var modelContext

    
    init(book: PersistentBook){
        self.book = book
        self.isFavorite = book.isFavorite
    }
    var body: some View {
        VStack(spacing: 16){
            Text("Details for:")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.bottom, 10)
            
            HStack{
                Image(uiImage: book.cover)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .cornerRadius(6)
                
                VStack(alignment: .leading, spacing: 10){
                    Text(book.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                        
                    Text("by \(book.author)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    StarRatingView(rating: book.rating)
                    HStack{
                        ColoredCapsule(text: book.genre.rawValue, color: .accentColor)
                        ColoredCapsule(text: book.readingStatus.rawValue, color: .cyan)
                        
                    }
                    
                    HStack{
                        Spacer()
                        FavoriteToggle(isFavorite: $isFavorite)
                            .onChange(of: isFavorite){ value in
                                book.isFavorite = value
                                try? modelContext.save()
                            }
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
            AddEditView()
            
        }
    }
}

//#Preview {
//    @State var book = Book(
//        title: "The return of the king",
//        author: "J.R.R Tolkien",
//        coverImage: "lotr_king",
//        summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//        rating: 0,
//        review: "",
//        isFavorite: false
//        
//    )
//    
//    BookDetailView()
//}
