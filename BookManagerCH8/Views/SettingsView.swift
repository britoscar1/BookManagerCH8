//
//  SettingsView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 12/05/26.
//

import SwiftUI

struct SettingsView: View{
    
    @AppStorage(SETTINGS_THEME) private var theme: Theme = SETTINGS_THEME_VALUE
    @AppStorage(SETTINGS_GRID_COLUMNS) private var gridColumns: Int = SETTINGS_GRID_COLUMNS_VALUE
    @AppStorage(SETTINGS_SHOW_RATING) private var toggleRating: Bool = SETTINGS_SHOW_RATING_VALUE
    @AppStorage(SETTINGS_TINT_COLOR) private var tintColor: Color = SETTINGS_TINT_COLOR_VALUE
    
    var body: some View{
        NavigationStack{
            Form{
                Section(header: Text("Appearance")){
                    Picker("Theme", selection: $theme){
                        ForEach(Theme.allCases, id: \.self){ theme in
                                Text(theme.rawValue)
                                .tag(theme)
                        }
                    }
                    ColorPicker("Accent Color", selection: $tintColor)
                }
                Section(header: Text("Grid")){
                    Stepper("Columns: \(gridColumns)", value: $gridColumns, in: 1...4)
                }
                Section(header: Text("List")){
                    Toggle(isOn: $toggleRating){
                        Text("Show rating")
                    }
                }
            }
        }
    }
}
