//
//  FavoriteBooksView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//

import SwiftUI
import SwiftData


struct FavoritesView: View{
    
    @Query var books: [PersistentBook]
    @State private var showFilters: Bool = false
    @State var selectedGenre: Genre?
    @State var selectedStatus: ReadingStatus?
    
    @AppStorage(SETTINGS_GRID_COLUMNS) private var gridColumns: Int = SETTINGS_GRID_COLUMNS_VALUE

    
    var gridLayout: [GridItem] {
        Array(repeating: GridItem(.flexible()), count:gridColumns)
    }
    //computed property
    
    private var favoriteBooks: [PersistentBook]{
        filterFavoriteBooks(books: books, genre: selectedGenre, readingStatus: selectedStatus)
    }
    
    var body: some View{
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: gridLayout){
                    ForEach(favoriteBooks){ book in
                        GridCard(book: book)
                    }
                }
                .padding(.all, CGFloat(8/2))
            }
            .navigationTitle("Favorites")
            .navigationBarItems(
                trailing:
                    Button("Filter"){
                        self.showFilters.toggle()
                    }
                
            )
        }
        .sheet(isPresented: $showFilters, content: {
            FilterBooksView(selectedGenre: $selectedGenre, selectedStatus: $selectedStatus)
        })
    }
}
