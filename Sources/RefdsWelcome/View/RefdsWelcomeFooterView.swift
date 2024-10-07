import SwiftUI
import RefdsUI

struct RefdsWelcomeFooterView: View {
    let viewData: RefdsWelcomeFooterViewDataProtocol
    let action: (RefdsWelcomeActionType) -> Void
    
    var body: some View {
        VStack(spacing: .large) {
            if let detail = viewData.detail {
                RefdsText(
                    detail,
                    style: .footnote,
                    color: .secondary,
                    alignment: .center
                )
            }
            
            RefdsButton(viewData.buttonTitle, style: .primary) {
                action(.done)
            }
        }
        .padding(.extraLarge)
    }
}

#Preview {
    RefdsWelcomeFooterView(viewData: RefdsWelcomeFooterViewDataMock()) { _ in }
}
