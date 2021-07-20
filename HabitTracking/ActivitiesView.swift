//
//  ActivitiesView.swift
//  HabitTracking
//
//  Created by Do Xuan Quyen on 7/20/21.
//

import SwiftUI

struct ActivitiesView: View {

    @StateObject var habit: Habit = Habit()
    @State private var isShowAddActivity: Bool = false

    var body: some View {
        NavigationView {
            List(habit.activities) { activity in
                NavigationLink(
                    destination: ActivityView(activity: activity),
                    label: {
                        VStack(alignment: .leading) {
                            Text(activity.title)
                                .font(.title)

                            Text(activity.description)
                                .font(.body)

                            Text("\(activity.completionTime)")
                                .font(.body)
                        }
                    })
            }
            .navigationTitle("Habits")
            .navigationBarItems(trailing: Button("Add") {
                // Present add new activity screen
                isShowAddActivity = true
            })
            .sheet(isPresented: $isShowAddActivity, content: {
                NewActivityView()
            })
            //.navigationBarItems(trailing: NavigationLink("Add", destination: NewActivityView()))
        }
        .environmentObject(habit)
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
