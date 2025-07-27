//
//  HorizontalScrollView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 27.07.2025.
//


import SwiftUI

struct HorizontalScrollView: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(.capsule)
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(crewMember.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                
                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview("With Data") {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let crew = missions[0].crew.map { member in
        CrewMember(role: member.role, astronaut: astronauts[member.name]!)
    }
    
    return NavigationStack {
        HorizontalScrollView(crew: crew)
            .background(.darkBackground)
    }
    .preferredColorScheme(.dark)
}
