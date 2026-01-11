//
//  PulseLoopApp.swift
//  PulseLoop
//
//  Created by Dovydas Dorofejevas on 30/11/2025.
//

import SwiftUI
import SwiftData

@main
struct PulseLoopApp: App {
    var body: some Scene {
        WindowGroup {
            MainTimerView()
        }
        .modelContainer(for: Workout.self)
    }
}

