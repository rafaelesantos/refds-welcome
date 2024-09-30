import SwiftUI
import RefdsUI

public struct RefdsWelcomeScreen: View {
    private let viewData: RefdsWelcomeViewDataProtocol?
    
    public init(viewData: RefdsWelcomeViewDataProtocol?) {
        self.viewData = viewData
    }
    
    @ViewBuilder
    public var body: some View {
        if let viewData {
            ZStack(alignment: .bottom) {
                VStack(spacing: 30) {
                    RefdsWelcomeHeaderView(viewData: viewData.header)
                    ScrollView {
                        RefdsWelcomeFeaturesView(viewData: viewData.features)
                        RefdsWelcomeFooterView(viewData: viewData.footer)
                            .opacity(.zero)
                            .padding(.top, -50)
                    }
                    .scrollIndicators(.hidden)
                }
                .padding(.large)
                
                RefdsWelcomeFooterView(viewData: viewData.footer)
                    .background()
            }
        }
    }
}

#Preview {
    RefdsWelcomeScreen(viewData: RefdsWelcomeViewDataMock())
}
