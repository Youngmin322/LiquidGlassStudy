//
//  ContentView.swift
//  LiquidGlassStudy
//
//  Created by Youngmin Cho on 9/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TripList()
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        UpButton()
                        DownButton()
                    }
                    
                    ToolbarSpacer(.fixed, placement: .primaryAction)
                    
                    ToolbarItem(placement: .primaryAction) {
                        SettingsButton()
                    }
                }
        }
    }
}

struct TripList: View {
    var body: some View {
        Text("Trip List")
    }
}

struct UpButton: View {
    var body: some View {
        Button("Up", systemImage: "chevron.up") { }
    }
}

struct DownButton: View {
    var body: some View {
        Button("Down", systemImage: "chevron.down") { }
    }
}

struct SettingsButton: View {
    var body: some View {
        Button("List Settings", systemImage: "ellipsis") { }
    }
}

#Preview {
    ContentView()
}
