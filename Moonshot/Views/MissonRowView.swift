//
//  MissonRowView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 28.07.2025.
//


import SwiftUI

struct MissonRowView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(
                            mission: mission,
                            astronauts: astronauts
                        )
                    } label: {
                        HStack(spacing: 0) {
                            MissionImageView(
                                image: mission.image,
                                width: 60,
                                height: 60
                            )
                            
                            MissionNameAndDateView(
                                name: mission.displayName,
                                date: mission.formattedLaunchDate
                            )
                        }
                        .missionCardStyle()
                    }
                }
            }
            .padding(.horizontal)
        }
        .backgroundStyle(.darkBackground)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return NavigationStack {
        MissonRowView(missions: missions, astronauts: astronauts)
    }
    .preferredColorScheme(.dark)
}
