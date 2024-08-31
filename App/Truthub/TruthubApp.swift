//
//  TrutubeApp.swift
//  Trutube
//
//  Created by Haeven Kelley on 8/31/24.
//

import SwiftUI
import SwiftData

@main
struct TruthubApp: App {
    // Shared ModelContainer setup with Video schema
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Video.self // Include the Video model in the schema
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView() // The initial view of your app
        }
        .modelContainer(sharedModelContainer) // Attach the model container to the environment
    }
}
