import SwiftUI
import RefdsUI

struct RefdsWelcomeFooterView: View {
    private let viewData: RefdsWelcomeFooterViewDataProtocol
    
    init(viewData: RefdsWelcomeFooterViewDataProtocol) {
        self.viewData = viewData
    }
    
    var body: some View {
        VStack(spacing: .padding(.large)) {
            if let detail = viewData.detail {
                RefdsText(
                    detail,
                    style: .footnote,
                    color: .secondary,
                    alignment: .center
                )
            }
            
            RefdsButton(viewData.buttonTitle, style: .primary) {
                viewData.action?()
            }
        }
        .padding(.padding(.extraLarge))
    }
}

#Preview {
    RefdsWelcomeFooterView(viewData: RefdsWelcomeFooterViewDataMock())
}
