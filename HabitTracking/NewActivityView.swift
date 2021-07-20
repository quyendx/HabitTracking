//
//  NewActivityView.swift
//  HabitTracking
//
//  Created by Do Xuan Quyen on 7/20/21.
//

import SwiftUI

struct NewActivityView: View {

    @State private var title: String = ""
    @State private var description: String = ""
    @EnvironmentObject private var habit: Habit
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var body: some View {
        VStack {
            TextField("Activity title", text: $title)
                .font(.title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Description", text: $description)
                .font(.body)
                .lineLimit(10)
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Add") {
                addNewActivity(title: title, description: description)

                // Back to previous screen
                mode.wrappedValue.dismiss()
            }

            Spacer()
        }
        //.environmentObject(habit)
        .navigationBarTitle(Text("New activity"))
    }

    private func addNewActivity(title: String, description: String) {
        guard title.isEmpty == false, description.isEmpty == false else { return }
        let activity = Activity(title: title, description: description, completionTime: 0)
        habit.activities.append(activity)
    }
}

struct NewActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NewActivityView()
    }
}
