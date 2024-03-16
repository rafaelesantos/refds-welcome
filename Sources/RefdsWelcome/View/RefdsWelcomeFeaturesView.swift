import SwiftUI

struct RefdsWelcomeFeaturesView: View {
    let viewData: [RefdsWelcomeFeatureViewData]
    
    var body: some View {
        VStack(spacing: 30) {
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
    .padding()
    .padding()
}
