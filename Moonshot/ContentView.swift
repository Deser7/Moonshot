//
//  ContentView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 18.07.2025.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text(astronauts.count.formatted())
    }
}

#Preview {
    ContentView()
}
