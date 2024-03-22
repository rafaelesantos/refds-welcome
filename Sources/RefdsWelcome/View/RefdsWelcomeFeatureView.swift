import SwiftUI
import RefdsUI

struct RefdsWelcomeFeatureView: View {
    private let viewData: RefdsWelcomeFeatureViewData
    
    init(viewData: RefdsWelcomeFeatureViewData) {
        self.viewData = viewData
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: .padding(.extraLarge)) {
            if let icon = viewData.icon {
                AnyView(icon())
                    .frame(width: 50)
            }
            
            VStack(alignment: .leading) {
                RefdsText(viewData.title, weight: .bold)
                RefdsText(viewData.description, weight: .light)
            }
            
            Spacer(minLength: .zero)
        }
        .onTapGesture { viewData.action?() }
    }
}

#Preview {
    RefdsWelcomeFeatureView(viewData: .mock)
        .padding(.padding(.extraLarge))
}
