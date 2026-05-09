//
//  FavoriteToggle.swift
//  BookManagerCH8
//
//  Created by Oscar Artemio Brito Ortiz on 07/05/26.
//
import SwiftUI

struct FavoriteToggle: View {
    @Binding var isFavorite: Bool
    var size: Font = .title
    var useAnimation: Bool = true

    @State private var opacity: CGFloat = 0
    @State private var scale: CGFloat = 1
    @State private var offsetY: CGFloat = 0
    
    var body: some View {
        ZStack{
            Image(systemName: "heart.fill")
                .foregroundStyle(.red)
                .font(size)
                .opacity(opacity)
                .scaleEffect(scale)
                .offset(y:offsetY)
            
            Toggle(isOn: $isFavorite) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(.red)
                    .font(size)
            }
            .toggleStyle(.button)
            .buttonStyle(.plain)
            .animation(.spring, value: isFavorite)
            .onChange(of: isFavorite){ _, newValue in
                guard useAnimation == true, newValue == true else { return }
                
                //appear and grow
                withAnimation(.spring(response: 0.5, dampingFraction: 0.4)){
                    scale = 1.2
                    opacity = 1
                }
                
                //float and vanish
                withAnimation(.easeInOut(duration: 0.5).delay(0.5)){
                    offsetY = -100
                    opacity = 0
                }
                
                //reset
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    scale = 1
                    offsetY = 0
                }
                
                
            }
        }
    }
}
