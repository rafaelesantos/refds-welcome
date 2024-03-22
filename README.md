# Refds Welcome

Refds Welcome is a Swift package designed to create a quick and interactive welcome screen for your SwiftUI applications. This package aims to provide an intuitive way to showcase the features of your application to new users.

## Features

- [X] Easy Integration: Simply import the WelcomePageSwiftUI package into your SwiftUI project and start using the welcome page component immediately.
- [X] Customizable: Customize the welcome page with your own branding, colors, and content to align with your application's design.
- [X] Interactive: Engage users with interactive elements such as buttons, gestures, and animations to showcase key features of your application.
- [X] Swift Package Manager Support: WelcomePageSwiftUI fully supports Swift Package Manager for easy integration into your project.

## Installation

Add this project to your `Package.swift` file.

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .package(url: "https://github.com/rafaelesantos/refds-welcome.git", branch: "main")
    ],
    targets: [
        .target(
            name: "YourProject",
            dependencies: [
                .product(
                    name: "RefdsWelcome",
                    package: "refds-welcome"),
            ]),
    ]
)
```
