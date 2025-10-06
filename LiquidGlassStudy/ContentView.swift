//
//  ContentView.swift
//  LiquidGlassStudy
//
//  Created by Youngmin Cho on 9/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("images")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            ToTopButton()
            
            Spacer()
        }
    }
}

struct ToTopButton: View {
    var body: some View {
        Button("To Top", systemImage: "chevron.up") {
            scrollToTop()
        }
        .padding()
        .glassEffect()
    }

    func scrollToTop() {
    }
}

#Preview {
    ContentView()
}
