//
//  MissionNameAndDateView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 28.07.2025.
//


import SwiftUI

struct MissionNameAndDateView: View {
    let name: String
    let date: String
    
    var body: some View {
        VStack {
            Text(name)
                .font(.headline)
                .foregroundStyle(
                    .white
                        .opacity(0.9)
                )
            
            Text(date)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .padding(.vertical, 30)
        .frame(maxWidth: .infinity)
        .background(.lightBackground)
    }
}

#Preview {
    VStack(spacing: 20) {
        MissionNameAndDateView(
            name: "Apollo 11",
            date: "Jul 16, 1969"
        )
        
        MissionNameAndDateView(
            name: "Apollo 13",
            date: "Apr 11, 1970"
        )
    }
    .padding()
    .background(.darkBackground)
    .preferredColorScheme(.dark)
}
