//
//  Activity.swift
//  HabitTracking
//
//  Created by Do Xuan Quyen on 7/20/21.
//

import Foundation

struct Activity: Identifiable, Equatable {
    var id: String {
        return title
    }

    let title: String
    let description: String
    let completionTime: Int
}

class Habit: ObservableObject {
    @Published var activities: [Activity] = []
}
