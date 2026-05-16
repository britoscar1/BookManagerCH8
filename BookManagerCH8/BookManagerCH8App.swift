//
//  BookManagerCH8App.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 4/28/26.
//

import SwiftUI
import SwiftData

@main
struct BookManagerCH8App: App {
    
    let modelContainer: ModelContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(modelContainer)
        }
    }
    
    init(){
        do{
            modelContainer = try ModelContainer(
                for: PersistentBook.self
            )
        } catch{
            fatalError("Failed to load model container")
        }
    }
}
