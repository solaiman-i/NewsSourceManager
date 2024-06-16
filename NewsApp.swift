//
//  NewsApp.swift
//  News
//
//  Created by Solaiman Ibrahimi on 2/22/24.
//

import SwiftUI
import SwiftData

@main
struct NewsApp: App {
    
    init() {
        createNewsDatabase()       // In DatabaseCreation.swift
    }
    
    @AppStorage("darkMode") private var darkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(darkMode ? .dark : .light)
                .modelContainer(for: [News.self], isUndoEnabled: true)
        }
    }
}
