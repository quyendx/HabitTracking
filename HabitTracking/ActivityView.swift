//
//  ActivityView.swift
//  HabitTracking
//
//  Created by Do Xuan Quyen on 7/20/21.
//

import SwiftUI

struct ActivityView: View {

    let activity: Activity
    @EnvironmentObject private var habit: Habit

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Completion: \(activity.completionTime)")
                .font(.title)

            Text(activity.description)
                .font(.caption)

            Spacer()
        }
        .padding()
        .navigationTitle(activity.title)
        .navigationBarItems(trailing: Button("Increment") {
            let new = Activity(title: activity.title,
                               description: activity.description,
                               completionTime: activity.completionTime + 1)
            if let index = habit.activities.firstIndex(where: { $0 == activity }) {
                habit.activities[index] = new
            }
        })
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: Activity(title: "Activity", description: "A type that represents part of your app’s user interface and provides modifiers that you use to configure views.", completionTime: 100))
    }
}
