//
//  FilterBooksView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 09/05/26.
//

import SwiftUI

struct FilterBooksView: View {
    
    @Binding var selectedGenre: Genre?
    @Binding var selectedStatus: ReadingStatus?
    
    @State var tempGenre: Genre?
    @State var tempStatus: ReadingStatus?
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Select a genre"){
                    Picker("Genre", selection: $tempGenre){
                        Text("No genre selected").tag(nil as Genre?)
                        ForEach(Genre.allCases, id:\.self){ genre in
                            Text(genre.rawValue).tag(genre)
                        }
                    }
                }
                Section("Reading Status"){
                    Picker("Status", selection: $tempStatus){
                        Text("No status selected").tag(nil as ReadingStatus?)
                        ForEach(ReadingStatus.allCases, id:\.self){ status in
                            Text(status.rawValue).tag(status)
                        }
                    }
                }
            }
            .toolbar{
                ToolbarItem(placement: .confirmationAction){
                    Button("Apply"){
                        selectedGenre = tempGenre
                        selectedStatus = tempStatus
                        dismiss()
                    }
                }
            
            }
        }
    }
}
