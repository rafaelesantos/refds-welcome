import SwiftUI
import RefdsUI

struct RefdsWelcomeFeaturesView: View {
    let viewData: [RefdsWelcomeFeatureViewDataProtocol]
    
    var body: some View {
        VStack(spacing: .medium) {
            ForEach(viewData.indices, id: \.self) {
                let viewData = viewData[$0]
                RefdsWelcomeFeatureView(viewData: viewData)
            }
        }
    }
}

#Preview {
    ScrollView {
        RefdsWelcomeFeaturesView(viewData: RefdsWelcomeViewDataMock().features)
            .padding(.horizontal, .extraLarge)
    }
}
