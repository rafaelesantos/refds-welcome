import SwiftUI
import RefdsUI
import RefdsShared

extension RefdsWelcomeFeatureViewData {
    static var mock: RefdsWelcomeFeatureViewData {
        RefdsWelcomeFeatureViewData(
            icon: { RefdsIcon(.random, color: .random, size: 40, renderingMode: .multicolor) },
            title: .someWord(),
            description: .someParagraph()
        )
    }
}
