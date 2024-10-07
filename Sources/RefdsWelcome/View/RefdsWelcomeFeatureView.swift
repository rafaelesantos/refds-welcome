import SwiftUI
import RefdsUI

struct RefdsWelcomeFeatureView: View {
    private let viewData: RefdsWelcomeFeatureViewDataProtocol
    private let action: ((RefdsWelcomeActionType) -> Void)?
    
    init(
        viewData: RefdsWelcomeFeatureViewDataProtocol,
        action: ((RefdsWelcomeActionType) -> Void)?
    ) {
        self.viewData = viewData
        self.action = action
    }
    
    var body: some View {
        RefdsButton {
            action?(.feature(viewData))
        } label: {
            HStack(spacing: .large) {
                RefdsIcon(viewData.icon, color: .accentColor, size: 30)
                    .frame(width: 60)
                
                VStack(alignment: .leading) {
                    RefdsText(viewData.title, weight: .bold)
                    RefdsText(viewData.description, color: .secondary)
                }
                
                Spacer(minLength: .zero)
            }
        }
    }
}

#Preview {
    List {
        RefdsWelcomeFeatureView(viewData: RefdsWelcomeFeatureViewDataMock()) { _ in }
    }
}
