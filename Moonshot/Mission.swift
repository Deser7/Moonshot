//
//  Mission.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 18.07.2025.
//

import Foundation

struct Mission: Codable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
