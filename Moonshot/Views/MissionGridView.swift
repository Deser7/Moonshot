//
//  MissionGridView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 28.07.2025.
//


import SwiftUI

struct MissionGridView: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    let columns: [GridItem]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(
                            mission: mission,
                            astronauts: astronauts
                        )
                    } label: {
                        VStack {
                            MissionImageView(
                                image: mission.image,
                                width: 100,
                                height: 100
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
            .padding([.horizontal, .bottom])
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return NavigationStack {
        MissionGridView(
            missions: missions,
            astronauts: astronauts,
            columns: [GridItem(.adaptive(minimum: 150))]
        )
    }
    .preferredColorScheme(.dark)
}
