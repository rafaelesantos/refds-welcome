import SwiftUI
import RefdsUI

struct RefdsWelcomeFooterView: View {
    private let viewData: RefdsWelcomeFooterViewData
    
    init(viewData: RefdsWelcomeFooterViewData) {
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
                viewData.buttonAction?()
            }
        }
        .padding(.padding(.extraLarge))
        .background()
    }
}

#Preview {
    RefdsWelcomeFooterView(viewData: .mock)
}
