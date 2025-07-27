//
//  MissionCardStyle.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 28.07.2025.
//


import SwiftUI

struct MissionCardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(.rect(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.lightBackground)
            )
    }
}

extension View {
    func missionCardStyle() -> some View {
        modifier(MissionCardStyle())
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("Test Card")
            .padding()
            .background(.blue)
            .missionCardStyle()
        
        Image(systemName: "star.fill")
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .padding()
            .background(.blue)
            .missionCardStyle()
    }
    .padding()
    .background(.darkBackground)
    .preferredColorScheme(.dark)
}
