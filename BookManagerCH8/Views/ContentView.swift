

import SwiftUI

struct ContentView: View {
    
    // Save new book
//    @State private var books = getBooks()
    
    @AppStorage(SETTINGS_THEME) private var theme: Theme = .light
    @AppStorage(SETTINGS_TINT_COLOR) private var tintColor: Color = SETTINGS_TINT_COLOR_VALUE

    var colorScheme: ColorScheme? {
        switch theme {
            case .light:
                return .light
            case .dark:
                return .dark
            case .system:
                return nil
            
        }
        
    }
    
    var body: some View {
        TabView{
            BookListView()
                .tabItem {
                    Label("Books", systemImage: "book.closed.fill")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .tint(tintColor)
        .preferredColorScheme(colorScheme)
        
    }
}

#Preview {
    ContentView()
}
