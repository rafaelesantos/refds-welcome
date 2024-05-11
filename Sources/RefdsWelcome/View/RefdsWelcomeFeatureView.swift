import SwiftUI
import RefdsUI

struct RefdsWelcomeFeatureView: View {
    private let viewData: RefdsWelcomeFeatureViewDataProtocol
    
    init(viewData: RefdsWelcomeFeatureViewDataProtocol) {
        self.viewData = viewData
    }
    
    var body: some View {
        HStack(spacing: .padding(.medium)) {
            RefdsIcon(viewData.icon, color: .accentColor, size: 30)
                .frame(width: 60)
            
            VStack(alignment: .leading) {
                RefdsText(viewData.title, weight: .bold)
                RefdsText(viewData.description, color: .secondary)
            }
            
            Spacer(minLength: .zero)
        }
        .onTapGesture { viewData.action?() }
    }
}

#Preview {
    List {
        RefdsWelcomeFeatureView(viewData: RefdsWelcomeFeatureViewDataMock())
    }
}
