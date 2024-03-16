import SwiftUI

extension RefdsWelcomeFeatureViewData {
    static var mock: RefdsWelcomeFeatureViewData {
        RefdsWelcomeFeatureViewData(
            icon: Image(systemName: "ladybug.fill").symbolRenderingMode(.multicolor),
            title: "Core Feature",
            description: "Practice with the app and pass the rank test on the first run."
        )
    }
}
