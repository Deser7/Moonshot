//
//  MissionImageView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 28.07.2025.
//


import SwiftUI

struct MissionImageView: View {
    let image: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: width, height: height)
            .padding()
    }
}

#Preview {
    VStack(spacing: 20) {
        MissionImageView(image: "apollo1", width: 100, height: 100)
        MissionImageView(image: "apollo11", width: 60, height: 60)
        MissionImageView(image: "apollo17", width: 150, height: 150)
    }
    .padding()
    .background(.darkBackground)
    .preferredColorScheme(.dark)
}
