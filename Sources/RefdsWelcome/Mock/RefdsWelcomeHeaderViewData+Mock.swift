import SwiftUI

extension RefdsWelcomeHeaderViewData {
    static var mock: RefdsWelcomeHeaderViewData {
        RefdsWelcomeHeaderViewData(
            applicationIcon: Image(systemName: "pc").symbolRenderingMode(.multicolor),
            introduceTitle: "Welcome to",
            applicationTitle: "RefdsWelcome",
            description: "RefdsWelcome is an animated, configurable welcome screen in a Swift Package – inspired by Apple's Stocks app."
        )
    }
}
