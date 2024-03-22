import SwiftUI
import RefdsUI
import RefdsShared

extension RefdsWelcomeHeaderViewData {
    static var mock: RefdsWelcomeHeaderViewData {
        RefdsWelcomeHeaderViewData(
            applicationIcon: { RefdsIcon(.pc, size: 50, renderingMode: .multicolor) },
            introduceTitle: "Welcome to",
            applicationTitle: .someWord(),
            description: .someParagraph()
        )
    }
}
