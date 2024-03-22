import SwiftUI
import RefdsUI

struct RefdsWelcomeFeaturesView: View {
    let viewData: [RefdsWelcomeFeatureViewData]
    
    var body: some View {
        VStack(spacing: .padding(.extraLarge)) {
            ForEach(viewData.indices, id: \.self) {
                let viewData = viewData[$0]
                RefdsWelcomeFeatureView(viewData: viewData)
            }
        }
    }
}

#Preview {
    RefdsWelcomeFeaturesView(viewData: [
        .mock,
        .mock,
        .mock,
        .mock
    ])
    .padding(.padding(.extraLarge))
}
