//
//  WeatherView.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 02/05/26.
//

import SwiftUI

struct WeatherView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            (isNight ? Color.black : Color.blue)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Tijuana")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Image(systemName: isNight ? "moon.stars.fill" : "sun.max.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                
                Text("22°")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                
                Text("Sunny")
                    .foregroundColor(.white)
                
                Toggle("Change Mode", isOn: $isNight)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width: 300)
                    
            }
        }
    }
}

#Preview {
    WeatherView()
}
