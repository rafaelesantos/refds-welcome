import SwiftUI
import RefdsUI

public struct RefdsWelcomeScreen: View {
    private let viewData: RefdsWelcomeViewDataProtocol?
    private let action: ((RefdsWelcomeActionType) -> Void)
    
    init(
        viewData: RefdsWelcomeViewDataProtocol?,
        action: (@escaping (RefdsWelcomeActionType) -> Void)
    ) {
        self.viewData = viewData
        self.action = action
    }
    
    @ViewBuilder
    public var body: some View {
        if let viewData {
            ZStack(alignment: .bottom) {
                VStack(spacing: 30) {
                    RefdsWelcomeHeaderView(viewData: viewData.header)
                    ScrollView {
                        RefdsWelcomeFeaturesView(
                            viewData: viewData.features,
                            action: action
                        )
                        
                        RefdsWelcomeFooterView(
                            viewData: viewData.footer,
                            action: action
                        )
                        .opacity(.zero)
                        .padding(.top, -50)
                    }
                    .scrollIndicators(.hidden)
                }
                .padding(.large)
                
                RefdsWelcomeFooterView(
                    viewData: viewData.footer,
                    action: action
                )
                .background()
            }
        }
    }
}

#Preview {
    RefdsWelcomeScreen(viewData: RefdsWelcomeViewDataMock()) { _ in }
}
