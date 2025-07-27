//
//  ContentView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 18.07.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingList = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            Group {
                if showingList {
                    MissonRowView(
                        missions: missions,
                        astronauts: astronauts
                    )
                } else {
                    MissionGridView(
                        missions: missions,
                        astronauts: astronauts,
                        columns: columns
                    )
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        withAnimation(.easeInOut) {
                            showingList.toggle()
                        }
                    } label: {
                        Image(
                            systemName: (
                                showingList
                                ? "rectangle.grid.2x2"
                                : "list.dash"
                            )
                        )
                        .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
