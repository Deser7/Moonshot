//
//  ContentView.swift
//  Moonshot
//
//  Created by Наташа Спиридонова on 18.07.2025.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(astronauts.count.formatted())
    }
}

#Preview {
    ContentView()
}
