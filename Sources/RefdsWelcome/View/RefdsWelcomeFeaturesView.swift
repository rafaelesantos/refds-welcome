import SwiftUI
import RefdsUI

struct RefdsWelcomeFeaturesView: View {
    let viewData: [RefdsWelcomeFeatureViewDataProtocol]
    let action: (RefdsWelcomeActionType) -> Void
    
    var body: some View {
        VStack(spacing: .medium) {
            ForEach(viewData.indices, id: \.self) {
                let viewData = viewData[$0]
                RefdsWelcomeFeatureView(
                    viewData: viewData,
                    action: action
                )
            }
        }
    }
}

#Preview {
    List {
        RefdsWelcomeFeaturesView(viewData: RefdsWelcomeViewDataMock().features) { _ in }
    }
    .listStyle(.plain)
}
