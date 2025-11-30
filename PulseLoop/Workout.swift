//
//  Workout.swift
//  PulseLoop
//
//  Created by Dovydas Dorofejevas on 30/11/2025.
//

import Foundation
import SwiftData

@Model
class Workout {
    var name: String
    var roundResetSeconds: Int
    var rounds: Int
    var exercises: Int
    var restSeconds: Int
    var workSeconds: Int
    var createdAt: Date
    
    init(
        name: String = "Untitled Workout",
        roundResetSeconds: Int,
        rounds: Int,
        exercises: Int,
        restSeconds: Int,
        workSeconds: Int,
        createdAt: Date = .now
    ) {
        self.name = name
        self.roundResetSeconds = roundResetSeconds
        self.rounds = rounds
        self.exercises = exercises
        self.restSeconds = restSeconds
        self.workSeconds = workSeconds
        self.createdAt = createdAt
    }
}
