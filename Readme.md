# Readme

Challenge from <https://www.hackingwithswift.com/guide/ios-swiftui/4/3/challenge>

## Learned

- Using `StateObject`, `Environment`, `EnvironmentObject` to share data between views. Environment variable must be added to accent view using `environmentObject` modifier before uses in child views
- Using `NavigationLink` to navigate
- Using `List`, `Stack`
- Using `ObservableObject`, `Published`
- Add NavigationLink as bar button item

```swift
.navigationBarItems(trailing: NavigationLink("Add", destination: NewActivityView()))
```

## Improvement

- How to dismiss a view?
- Need to deep dive into Environment variables
