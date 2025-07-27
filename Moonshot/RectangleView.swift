//
//  RectangleView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 27.07.2025.
//


import SwiftUI

struct RectangleView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectangleView()
}
