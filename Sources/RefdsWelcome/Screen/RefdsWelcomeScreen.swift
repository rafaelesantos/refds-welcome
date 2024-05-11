import SwiftUI
import RefdsUI

public struct RefdsWelcomeScreen: View {
    private let viewData: any RefdsWelcomeViewDataProtocol
    
    public init(viewData: any RefdsWelcomeViewDataProtocol) {
        self.viewData = viewData
    }
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(spacing: 30) {
                    RefdsWelcomeHeaderView(viewData: viewData.header)
                    
                    RefdsWelcomeFeaturesView(viewData: viewData.features)
                    
                    RefdsWelcomeFooterView(viewData: viewData.footer)
                        .opacity(.zero)
                        .padding(.top, -50)
                }
                .padding(.padding(.large))
            }
            .scrollIndicators(.hidden)
            
            RefdsWelcomeFooterView(viewData: viewData.footer)
                .background()
        }
    }
}

#Preview {
    RefdsWelcomeScreen(viewData: RefdsWelcomeViewDataMock())
}
