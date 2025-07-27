//
//  Astronaut.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 18.07.2025.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}
