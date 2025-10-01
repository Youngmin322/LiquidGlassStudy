//
//  ContentView.swift
//  LiquidGlassStudy
//
//  Created by Youngmin Cho on 9/24/25.
//

import Charts
import SwiftUI

struct HikePlotView: View {
    var body: some View {
        Chart3D {
            SurfacePlot(
                x: "x", y: "y", z: "z") { x, y in
                    sin(x) * cos(y)
                }
                .foregroundStyle(Gradient(colors: [.orange, .pink]))
        }
        .chartXScale(domain: -3 ... 6)
        .chartYScale(domain: -3 ... 10)
        .chartZScale(domain: -3 ... 3)
    }
}

struct HealthTabView: View {
    @State private var text: String = ""
    
    var body: some View {
        TabView {
            Tab("Summary", systemImage: "heart") {
                NavigationStack {
                    Text("Summary")
                }
            }
            Tab("Sharing", systemImage: "person.2") {
                NavigationStack {
                    Text("Sharing")
                }
            }
            Tab(role: .search) {
                NavigationStack {
                    Text("search")
                }
            }
        }
        .searchable(text: $text)
    }
}

struct ContentView: View {
    @State private var query: String = ""
    
    var body: some View {
        NavigationSplitView {
            Text("Sidebar")
        } detail: {
            Text("Detail")
        }
        .searchable(
            text: $query,
            prompt: "Search"
            )
        
//        NavigationStack {
//            TripList()
//                .toolbar {
//                    ToolbarItemGroup(placement: .primaryAction) {
//                        UpButton()
//                        DownButton()
//                    }
//                    
//                    ToolbarSpacer(.fixed, placement: .primaryAction)
//                    
//                    ToolbarItem(placement: .primaryAction) {
//                        SettingsButton()
//                    }
//                }
//        }
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
    HikePlotView()
}
