//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Hatice Çiğdem Karaca on 23.09.2024.
//

import SwiftUI

struct ContentView: View {
    // Intro Visibilty Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    // Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Recents()
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Search()
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            
            Graphs()
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Settings()
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .sheet(isPresented: $isFirstTime, content: {
            IntoScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
